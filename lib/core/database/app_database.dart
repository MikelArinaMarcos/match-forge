import 'package:drift/drift.dart';

import 'tables/players.dart';

import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:drift/native.dart';
import 'daos/players_dao.dart';

part 'app_database.g.dart';

@DriftDatabase(
  tables: [
    Players,
  ],
  daos: [
    PlayersDao,
  ],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();

    final file = File(
      p.join(dbFolder.path, 'match_forge.sqlite'),
    );

    return NativeDatabase.createInBackground(file);
  });
}