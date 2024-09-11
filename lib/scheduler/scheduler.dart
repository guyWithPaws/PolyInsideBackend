import 'dart:io';

import 'package:drift/native.dart';
import 'package:poly_inside_server/database/database.dart';
import 'package:poly_inside_server/database/provider_impl.dart';
import 'package:poly_inside_server/parser/parser.dart';


class Scheduler {

  static const Duration periodic = Duration(seconds: 100);
  final stream = Stream.periodic(periodic, (count) => count);

  Stream<int> get _stream => stream;
}

void main() {
  final database = AppDatabase(NativeDatabase(File('db.sqlite')));
  final provider = DatabaseProviderImpl(database: database);
  final parser = Parser(provider: provider);
  final test = Scheduler();
  // ignore: cascade_invocations
  test._stream.listen((data) async {
    print('start parsing $data');
    await parser.fillDatabase();
    print('end parsing $data');
  });
}
