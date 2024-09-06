import 'dart:async';
import 'dart:io';

import 'package:drift/native.dart';
import 'package:grpc/grpc.dart';
import 'package:l/l.dart';
import 'package:poly_inside_server/database/database.dart';
import 'package:poly_inside_server/database/database_provider.dart';
import 'package:poly_inside_server/service.dart';

Future<void> main() async {
  await l.capture(
    () async {
      await runZonedGuarded(
        () async {
          final database = AppDatabase(NativeDatabase(File('db.sqlite')));
          final provider = DatabaseProviderImpl(database: database);
          final server =
              Server.create(services: [GRPCService(provider: provider)]);

          await server.serve(port: 8080);
          print('Server listening on ${server.port}');
        },
        (e, st) => l.e,
      );
    },
    const LogOptions(
      outputInRelease: true,
    ),
  );
}
