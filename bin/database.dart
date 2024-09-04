import 'package:drift/drift.dart';
import 'dart:io';
import 'package:drift/native.dart';

part 'database.g.dart';

class Professors extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  BlobColumn get avatar => blob()();

  RealColumn get objectivity => real()();
  RealColumn get loyality => real()();
  RealColumn get professionalism => real()();
  RealColumn get harshness => real()();
}

class Users extends Table {
  IntColumn get id => integer()();
  TextColumn get name => text()();
  BlobColumn get avatar => blob()();
  IntColumn get rating => integer().withDefault(Constant<int>(0))();
}

class Reviews extends Table {
  IntColumn get id => integer()();
  IntColumn get userId => integer()();
  IntColumn get professorId => integer()();
  TextColumn get comment => text()();

  RealColumn get objectivity => real()();
  RealColumn get loyality => real()();
  RealColumn get professionalism => real()();
  RealColumn get harshness => real()();
}

@DriftDatabase(tables: [Professors, Users, Reviews])
class AppDatabase extends _$AppDatabase {
  //AppDatabase() : super(_openConnection());

  AppDatabase(super.e);

  @override
  int get schemaVersion => 1;

  // static QueryExecutor _openConnection() {
  //   return NativeDatabase.createInBackground(File('/bin'));
  // }
}
