import 'package:drift/drift.dart';

class Players extends Table {
  TextColumn get id => text()();

  TextColumn get firstName => text()();

  TextColumn get lastName1 => text()();

  TextColumn get lastName2 => text().nullable()();

  DateTimeColumn get birthDate => dateTime().nullable()();

  IntColumn get preferredNumber => integer().nullable()();

  TextColumn get preferredPosition => text().nullable()();

  TextColumn get secondaryPosition => text().nullable()();

  TextColumn get dominantFoot => text().nullable()();

  BoolColumn get active => boolean().withDefault(const Constant(true))();

  TextColumn get notes => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}