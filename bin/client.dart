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
  await Filter.instance.initializeAsyncLoaders();
  const text = 'хуй препод я люблю его очень сильно лучший наш слон';

  final stopwatch = Stopwatch()..start();
  final result = Filter.instance.check(text);
  stopwatch.stop();

  print('Execution time: ${stopwatch.elapsed}');
  print('Result: $result');

  return;

  final credentials = ServerCredentials.fromJSON(r'secrets\credential.json');
  final channel = ClientChannel(
    credentials.ip,
    port: credentials.port,
    options: const ChannelOptions(
      credentials: ChannelCredentials.insecure(),
    ),
  );
  final client = SearchServiceClient(channel);
  final data = client.addReview(
    AddReviewRequest(
      review: Review(
        userId: 123456,
        comment: 'etot prepod prosto imba',
        professorId: 342123,
        reviewId: 123456.toString() + DateTime.now().toUtc().toString(),
      ),
    ),
  );
  return;
}
