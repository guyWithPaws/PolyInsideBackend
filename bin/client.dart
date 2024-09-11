import 'dart:convert';
import 'dart:core';
import 'dart:io';

import 'package:grpc/grpc.dart';
import 'package:poly_inside_server/generated/protobufs/service.pbgrpc.dart';
import 'package:poly_inside_server/validator/validator.dart';

class ServerCredentials {
  final String ip;
  final int port;
  final Duration connectionTimeout;

  factory ServerCredentials.fromJSON(String fileName) {
    final jsonFile = File(fileName);
    final jsonString = jsonFile.readAsStringSync();
    final json = jsonDecode(jsonString) as Map<String, dynamic>;
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

Future<void> main(List<String> args) async {

  final channel = ClientChannel(
    '194.87.210.193',
    port: 8080,
    options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
  );
  final stub = SearchServiceClient(channel);

  var data = stub.getListProfessor(ListProfessorRequest());
  await data.forEach(print);
  await channel.shutdown();



}
