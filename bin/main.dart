import 'dart:io';
import 'dart:typed_data';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';

import 'database/database.dart';


void main() async {
  final database = AppDatabase(NativeDatabase(File('db.sqlite')));

  await database.into(database.users).insert(
      UsersCompanion.insert(id: 1234, name: 'Goxa', avatar: Uint8List(1)));

  List<User> userList = await database.select(database.users).get();

  print('length ${userList.length}');
}
