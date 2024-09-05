import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:grpc/grpc.dart';
import 'package:poly_inside_server/database/database_provider.dart';
import 'package:poly_inside_server/service.dart';

import 'package:poly_inside_server/database/database.dart';

void main() async {
  final database = AppDatabase(NativeDatabase(File('db.sqlite')));
  final provider = DatabaseProviderImpl(database: database);
  final server = Server.create(services: [GRPCService(provider: provider)]);

  await server.serve(port: 8080);

  List<Professor> userList = await database.select(database.professors).get();

  print('length ${userList.length}');
}
