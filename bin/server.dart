import 'dart:async';
import 'dart:io';

import 'package:drift/native.dart';
import 'package:grpc/grpc.dart';
import 'package:l/l.dart';
import 'package:poly_inside_server/database/database.dart';
import 'package:poly_inside_server/database/provider_impl.dart';
import 'package:poly_inside_server/parser/parser.dart';
import 'package:poly_inside_server/service.dart';

Future<void> main() async {
  await l.capture(
    () async {
      await runZonedGuarded(
        () async {
          await Filter.instance.initializeAsyncLoaders();

          final database = AppDatabase(NativeDatabase(File('db.sqlite')));
          final provider = DatabaseProviderImpl(database: database);
          final parser = Parser(provider: provider);
          await parser.fillDatabase();

          final server = Server.create(services: [
            GRPCService(provider: provider),
          ], interceptors: []);
          await server.serve(port: 8080);
          l.i('Server listening on ${server.port}');
        },
        l.e,
      );
    },
    LogOptions(
      outputInRelease: true,
      messageFormatting: (message, logLevel, dateTime) =>
          // ignore: lines_longer_than_80_chars
          '${dateTime.toString().substring(0, dateTime.toString().length - 7)} | $message',
    ),
  );
}
