import 'dart:convert';
import 'dart:io';

import 'package:grpc/grpc.dart';
import 'package:poly_inside_server/generated/protobufs/service.pbgrpc.dart';

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
  final credentials = ServerCredentials.fromJSON(
      '/Users/guywithpaws/PolyInsideBackend/secrets/credentials.json');
  final channel = ClientChannel(
    credentials.ip,
    port: credentials.port,
    options: const ChannelOptions(
      credentials: ChannelCredentials.insecure(),
    ),
  );
  final client = SearchServiceClient(channel);
  // await client.addProfile(
  //   User(
  //     id: 123,
  //     name: 'Goxa',
  //     avatar: [],
  //     rating: 100,
  //   ),
  // );
  await client.addReview(
    Review(
      userId: 123,
      professorId: 34,
      comment: 'prepod dushka',
      date: DateTime.now().toIso8601String(),
      raiting: 98,
      professionalism: 1,
      loyalty: 1,
      objectivity: 1,
      
    ),
  );
  return;
}
