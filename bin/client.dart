import 'dart:convert';
import 'dart:io';

import 'package:grpc/grpc.dart';
import 'package:poly_inside_server/generated/protobufs/service.pbgrpc.dart';

class ServerCredentials {
  String ip;
  int port;
  Duration connectionTimeout;

  factory ServerCredentials.fromJSON(String fileName) {
    final jsonFile = File(fileName);
    final jsonString = jsonFile.readAsStringSync();
    final json = jsonDecode(jsonString) as Map<String, Object>;
    return ServerCredentials(
      ip: json['ip'] as String,
      port: json['port'] as int,
      connectionTimeout: json.containsKey('connectionTimeout')
          ? Duration(seconds: json['connectionTimeout'] as int)
          : const Duration(seconds: 30),
    );
  }

  ServerCredentials(
      {required this.ip,
      required this.port,
      this.connectionTimeout = const Duration(seconds: 30)});
}

class DatabaseManager {
  static late final ClientChannel _clientChannel;
  static late final SearchServiceClient _searchServiceClient;
  static late final ServerCredentials _serverCredentials;

  static SearchServiceClient initializeApp(String fileName) {
    _serverCredentials = ServerCredentials.fromJSON(fileName);
    try {
      _clientChannel = ClientChannel(
        _serverCredentials.ip,
        port: _serverCredentials.port,
        options: const ChannelOptions(
          credentials: ChannelCredentials.insecure(),
        ),
      );

      _searchServiceClient = SearchServiceClient(_clientChannel,
          options: CallOptions(timeout: _serverCredentials.connectionTimeout));
      return _searchServiceClient;
    } catch (error) {
      throw Exception(
          'Failed to connect to a server with ip ${_serverCredentials.ip}, port ${_serverCredentials.port}');
    }
  }
}

void main(List<String> args) {
  final database = DatabaseManager.initializeApp('secrets\\credentials.json');

  final professors = database.getListProfessor(ListProfessorRequest());
  professors.forEach((element) => print(element.name));
}
