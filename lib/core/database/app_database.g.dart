// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $PlayersTable extends Players with TableInfo<$PlayersTable, Player> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PlayersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _firstNameMeta = const VerificationMeta(
    'firstName',
  );
  @override
  late final GeneratedColumn<String> firstName = GeneratedColumn<String>(
    'first_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _lastName1Meta = const VerificationMeta(
    'lastName1',
  );
  @override
  late final GeneratedColumn<String> lastName1 = GeneratedColumn<String>(
    'last_name1',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _lastName2Meta = const VerificationMeta(
    'lastName2',
  );
  @override
  late final GeneratedColumn<String> lastName2 = GeneratedColumn<String>(
    'last_name2',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _birthDateMeta = const VerificationMeta(
    'birthDate',
  );
  @override
  late final GeneratedColumn<DateTime> birthDate = GeneratedColumn<DateTime>(
    'birth_date',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _preferredNumberMeta = const VerificationMeta(
    'preferredNumber',
  );
  @override
  late final GeneratedColumn<int> preferredNumber = GeneratedColumn<int>(
    'preferred_number',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _preferredPositionMeta = const VerificationMeta(
    'preferredPosition',
  );
  @override
  late final GeneratedColumn<String> preferredPosition =
      GeneratedColumn<String>(
        'preferred_position',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _secondaryPositionMeta = const VerificationMeta(
    'secondaryPosition',
  );
  @override
  late final GeneratedColumn<String> secondaryPosition =
      GeneratedColumn<String>(
        'secondary_position',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _dominantFootMeta = const VerificationMeta(
    'dominantFoot',
  );
  @override
  late final GeneratedColumn<String> dominantFoot = GeneratedColumn<String>(
    'dominant_foot',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _activeMeta = const VerificationMeta('active');
  @override
  late final GeneratedColumn<bool> active = GeneratedColumn<bool>(
    'active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("active" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
    'notes',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    firstName,
    lastName1,
    lastName2,
    birthDate,
    preferredNumber,
    preferredPosition,
    secondaryPosition,
    dominantFoot,
    active,
    notes,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'players';
  @override
  VerificationContext validateIntegrity(
    Insertable<Player> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('first_name')) {
      context.handle(
        _firstNameMeta,
        firstName.isAcceptableOrUnknown(data['first_name']!, _firstNameMeta),
      );
    } else if (isInserting) {
      context.missing(_firstNameMeta);
    }
    if (data.containsKey('last_name1')) {
      context.handle(
        _lastName1Meta,
        lastName1.isAcceptableOrUnknown(data['last_name1']!, _lastName1Meta),
      );
    } else if (isInserting) {
      context.missing(_lastName1Meta);
    }
    if (data.containsKey('last_name2')) {
      context.handle(
        _lastName2Meta,
        lastName2.isAcceptableOrUnknown(data['last_name2']!, _lastName2Meta),
      );
    }
    if (data.containsKey('birth_date')) {
      context.handle(
        _birthDateMeta,
        birthDate.isAcceptableOrUnknown(data['birth_date']!, _birthDateMeta),
      );
    }
    if (data.containsKey('preferred_number')) {
      context.handle(
        _preferredNumberMeta,
        preferredNumber.isAcceptableOrUnknown(
          data['preferred_number']!,
          _preferredNumberMeta,
        ),
      );
    }
    if (data.containsKey('preferred_position')) {
      context.handle(
        _preferredPositionMeta,
        preferredPosition.isAcceptableOrUnknown(
          data['preferred_position']!,
          _preferredPositionMeta,
        ),
      );
    }
    if (data.containsKey('secondary_position')) {
      context.handle(
        _secondaryPositionMeta,
        secondaryPosition.isAcceptableOrUnknown(
          data['secondary_position']!,
          _secondaryPositionMeta,
        ),
      );
    }
    if (data.containsKey('dominant_foot')) {
      context.handle(
        _dominantFootMeta,
        dominantFoot.isAcceptableOrUnknown(
          data['dominant_foot']!,
          _dominantFootMeta,
        ),
      );
    }
    if (data.containsKey('active')) {
      context.handle(
        _activeMeta,
        active.isAcceptableOrUnknown(data['active']!, _activeMeta),
      );
    }
    if (data.containsKey('notes')) {
      context.handle(
        _notesMeta,
        notes.isAcceptableOrUnknown(data['notes']!, _notesMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Player map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Player(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      firstName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}first_name'],
      )!,
      lastName1: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}last_name1'],
      )!,
      lastName2: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}last_name2'],
      ),
      birthDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}birth_date'],
      ),
      preferredNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}preferred_number'],
      ),
      preferredPosition: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}preferred_position'],
      ),
      secondaryPosition: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}secondary_position'],
      ),
      dominantFoot: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}dominant_foot'],
      ),
      active: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}active'],
      )!,
      notes: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}notes'],
      ),
    );
  }

  @override
  $PlayersTable createAlias(String alias) {
    return $PlayersTable(attachedDatabase, alias);
  }
}

class Player extends DataClass implements Insertable<Player> {
  final String id;
  final String firstName;
  final String lastName1;
  final String? lastName2;
  final DateTime? birthDate;
  final int? preferredNumber;
  final String? preferredPosition;
  final String? secondaryPosition;
  final String? dominantFoot;
  final bool active;
  final String? notes;
  const Player({
    required this.id,
    required this.firstName,
    required this.lastName1,
    this.lastName2,
    this.birthDate,
    this.preferredNumber,
    this.preferredPosition,
    this.secondaryPosition,
    this.dominantFoot,
    required this.active,
    this.notes,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['first_name'] = Variable<String>(firstName);
    map['last_name1'] = Variable<String>(lastName1);
    if (!nullToAbsent || lastName2 != null) {
      map['last_name2'] = Variable<String>(lastName2);
    }
    if (!nullToAbsent || birthDate != null) {
      map['birth_date'] = Variable<DateTime>(birthDate);
    }
    if (!nullToAbsent || preferredNumber != null) {
      map['preferred_number'] = Variable<int>(preferredNumber);
    }
    if (!nullToAbsent || preferredPosition != null) {
      map['preferred_position'] = Variable<String>(preferredPosition);
    }
    if (!nullToAbsent || secondaryPosition != null) {
      map['secondary_position'] = Variable<String>(secondaryPosition);
    }
    if (!nullToAbsent || dominantFoot != null) {
      map['dominant_foot'] = Variable<String>(dominantFoot);
    }
    map['active'] = Variable<bool>(active);
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    return map;
  }

  PlayersCompanion toCompanion(bool nullToAbsent) {
    return PlayersCompanion(
      id: Value(id),
      firstName: Value(firstName),
      lastName1: Value(lastName1),
      lastName2: lastName2 == null && nullToAbsent
          ? const Value.absent()
          : Value(lastName2),
      birthDate: birthDate == null && nullToAbsent
          ? const Value.absent()
          : Value(birthDate),
      preferredNumber: preferredNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(preferredNumber),
      preferredPosition: preferredPosition == null && nullToAbsent
          ? const Value.absent()
          : Value(preferredPosition),
      secondaryPosition: secondaryPosition == null && nullToAbsent
          ? const Value.absent()
          : Value(secondaryPosition),
      dominantFoot: dominantFoot == null && nullToAbsent
          ? const Value.absent()
          : Value(dominantFoot),
      active: Value(active),
      notes: notes == null && nullToAbsent
          ? const Value.absent()
          : Value(notes),
    );
  }

  factory Player.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Player(
      id: serializer.fromJson<String>(json['id']),
      firstName: serializer.fromJson<String>(json['firstName']),
      lastName1: serializer.fromJson<String>(json['lastName1']),
      lastName2: serializer.fromJson<String?>(json['lastName2']),
      birthDate: serializer.fromJson<DateTime?>(json['birthDate']),
      preferredNumber: serializer.fromJson<int?>(json['preferredNumber']),
      preferredPosition: serializer.fromJson<String?>(
        json['preferredPosition'],
      ),
      secondaryPosition: serializer.fromJson<String?>(
        json['secondaryPosition'],
      ),
      dominantFoot: serializer.fromJson<String?>(json['dominantFoot']),
      active: serializer.fromJson<bool>(json['active']),
      notes: serializer.fromJson<String?>(json['notes']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'firstName': serializer.toJson<String>(firstName),
      'lastName1': serializer.toJson<String>(lastName1),
      'lastName2': serializer.toJson<String?>(lastName2),
      'birthDate': serializer.toJson<DateTime?>(birthDate),
      'preferredNumber': serializer.toJson<int?>(preferredNumber),
      'preferredPosition': serializer.toJson<String?>(preferredPosition),
      'secondaryPosition': serializer.toJson<String?>(secondaryPosition),
      'dominantFoot': serializer.toJson<String?>(dominantFoot),
      'active': serializer.toJson<bool>(active),
      'notes': serializer.toJson<String?>(notes),
    };
  }

  Player copyWith({
    String? id,
    String? firstName,
    String? lastName1,
    Value<String?> lastName2 = const Value.absent(),
    Value<DateTime?> birthDate = const Value.absent(),
    Value<int?> preferredNumber = const Value.absent(),
    Value<String?> preferredPosition = const Value.absent(),
    Value<String?> secondaryPosition = const Value.absent(),
    Value<String?> dominantFoot = const Value.absent(),
    bool? active,
    Value<String?> notes = const Value.absent(),
  }) => Player(
    id: id ?? this.id,
    firstName: firstName ?? this.firstName,
    lastName1: lastName1 ?? this.lastName1,
    lastName2: lastName2.present ? lastName2.value : this.lastName2,
    birthDate: birthDate.present ? birthDate.value : this.birthDate,
    preferredNumber: preferredNumber.present
        ? preferredNumber.value
        : this.preferredNumber,
    preferredPosition: preferredPosition.present
        ? preferredPosition.value
        : this.preferredPosition,
    secondaryPosition: secondaryPosition.present
        ? secondaryPosition.value
        : this.secondaryPosition,
    dominantFoot: dominantFoot.present ? dominantFoot.value : this.dominantFoot,
    active: active ?? this.active,
    notes: notes.present ? notes.value : this.notes,
  );
  Player copyWithCompanion(PlayersCompanion data) {
    return Player(
      id: data.id.present ? data.id.value : this.id,
      firstName: data.firstName.present ? data.firstName.value : this.firstName,
      lastName1: data.lastName1.present ? data.lastName1.value : this.lastName1,
      lastName2: data.lastName2.present ? data.lastName2.value : this.lastName2,
      birthDate: data.birthDate.present ? data.birthDate.value : this.birthDate,
      preferredNumber: data.preferredNumber.present
          ? data.preferredNumber.value
          : this.preferredNumber,
      preferredPosition: data.preferredPosition.present
          ? data.preferredPosition.value
          : this.preferredPosition,
      secondaryPosition: data.secondaryPosition.present
          ? data.secondaryPosition.value
          : this.secondaryPosition,
      dominantFoot: data.dominantFoot.present
          ? data.dominantFoot.value
          : this.dominantFoot,
      active: data.active.present ? data.active.value : this.active,
      notes: data.notes.present ? data.notes.value : this.notes,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Player(')
          ..write('id: $id, ')
          ..write('firstName: $firstName, ')
          ..write('lastName1: $lastName1, ')
          ..write('lastName2: $lastName2, ')
          ..write('birthDate: $birthDate, ')
          ..write('preferredNumber: $preferredNumber, ')
          ..write('preferredPosition: $preferredPosition, ')
          ..write('secondaryPosition: $secondaryPosition, ')
          ..write('dominantFoot: $dominantFoot, ')
          ..write('active: $active, ')
          ..write('notes: $notes')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    firstName,
    lastName1,
    lastName2,
    birthDate,
    preferredNumber,
    preferredPosition,
    secondaryPosition,
    dominantFoot,
    active,
    notes,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Player &&
          other.id == this.id &&
          other.firstName == this.firstName &&
          other.lastName1 == this.lastName1 &&
          other.lastName2 == this.lastName2 &&
          other.birthDate == this.birthDate &&
          other.preferredNumber == this.preferredNumber &&
          other.preferredPosition == this.preferredPosition &&
          other.secondaryPosition == this.secondaryPosition &&
          other.dominantFoot == this.dominantFoot &&
          other.active == this.active &&
          other.notes == this.notes);
}

class PlayersCompanion extends UpdateCompanion<Player> {
  final Value<String> id;
  final Value<String> firstName;
  final Value<String> lastName1;
  final Value<String?> lastName2;
  final Value<DateTime?> birthDate;
  final Value<int?> preferredNumber;
  final Value<String?> preferredPosition;
  final Value<String?> secondaryPosition;
  final Value<String?> dominantFoot;
  final Value<bool> active;
  final Value<String?> notes;
  final Value<int> rowid;
  const PlayersCompanion({
    this.id = const Value.absent(),
    this.firstName = const Value.absent(),
    this.lastName1 = const Value.absent(),
    this.lastName2 = const Value.absent(),
    this.birthDate = const Value.absent(),
    this.preferredNumber = const Value.absent(),
    this.preferredPosition = const Value.absent(),
    this.secondaryPosition = const Value.absent(),
    this.dominantFoot = const Value.absent(),
    this.active = const Value.absent(),
    this.notes = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PlayersCompanion.insert({
    required String id,
    required String firstName,
    required String lastName1,
    this.lastName2 = const Value.absent(),
    this.birthDate = const Value.absent(),
    this.preferredNumber = const Value.absent(),
    this.preferredPosition = const Value.absent(),
    this.secondaryPosition = const Value.absent(),
    this.dominantFoot = const Value.absent(),
    this.active = const Value.absent(),
    this.notes = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       firstName = Value(firstName),
       lastName1 = Value(lastName1);
  static Insertable<Player> custom({
    Expression<String>? id,
    Expression<String>? firstName,
    Expression<String>? lastName1,
    Expression<String>? lastName2,
    Expression<DateTime>? birthDate,
    Expression<int>? preferredNumber,
    Expression<String>? preferredPosition,
    Expression<String>? secondaryPosition,
    Expression<String>? dominantFoot,
    Expression<bool>? active,
    Expression<String>? notes,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (firstName != null) 'first_name': firstName,
      if (lastName1 != null) 'last_name1': lastName1,
      if (lastName2 != null) 'last_name2': lastName2,
      if (birthDate != null) 'birth_date': birthDate,
      if (preferredNumber != null) 'preferred_number': preferredNumber,
      if (preferredPosition != null) 'preferred_position': preferredPosition,
      if (secondaryPosition != null) 'secondary_position': secondaryPosition,
      if (dominantFoot != null) 'dominant_foot': dominantFoot,
      if (active != null) 'active': active,
      if (notes != null) 'notes': notes,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PlayersCompanion copyWith({
    Value<String>? id,
    Value<String>? firstName,
    Value<String>? lastName1,
    Value<String?>? lastName2,
    Value<DateTime?>? birthDate,
    Value<int?>? preferredNumber,
    Value<String?>? preferredPosition,
    Value<String?>? secondaryPosition,
    Value<String?>? dominantFoot,
    Value<bool>? active,
    Value<String?>? notes,
    Value<int>? rowid,
  }) {
    return PlayersCompanion(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      lastName1: lastName1 ?? this.lastName1,
      lastName2: lastName2 ?? this.lastName2,
      birthDate: birthDate ?? this.birthDate,
      preferredNumber: preferredNumber ?? this.preferredNumber,
      preferredPosition: preferredPosition ?? this.preferredPosition,
      secondaryPosition: secondaryPosition ?? this.secondaryPosition,
      dominantFoot: dominantFoot ?? this.dominantFoot,
      active: active ?? this.active,
      notes: notes ?? this.notes,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (firstName.present) {
      map['first_name'] = Variable<String>(firstName.value);
    }
    if (lastName1.present) {
      map['last_name1'] = Variable<String>(lastName1.value);
    }
    if (lastName2.present) {
      map['last_name2'] = Variable<String>(lastName2.value);
    }
    if (birthDate.present) {
      map['birth_date'] = Variable<DateTime>(birthDate.value);
    }
    if (preferredNumber.present) {
      map['preferred_number'] = Variable<int>(preferredNumber.value);
    }
    if (preferredPosition.present) {
      map['preferred_position'] = Variable<String>(preferredPosition.value);
    }
    if (secondaryPosition.present) {
      map['secondary_position'] = Variable<String>(secondaryPosition.value);
    }
    if (dominantFoot.present) {
      map['dominant_foot'] = Variable<String>(dominantFoot.value);
    }
    if (active.present) {
      map['active'] = Variable<bool>(active.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PlayersCompanion(')
          ..write('id: $id, ')
          ..write('firstName: $firstName, ')
          ..write('lastName1: $lastName1, ')
          ..write('lastName2: $lastName2, ')
          ..write('birthDate: $birthDate, ')
          ..write('preferredNumber: $preferredNumber, ')
          ..write('preferredPosition: $preferredPosition, ')
          ..write('secondaryPosition: $secondaryPosition, ')
          ..write('dominantFoot: $dominantFoot, ')
          ..write('active: $active, ')
          ..write('notes: $notes, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $PlayersTable players = $PlayersTable(this);
  late final PlayersDao playersDao = PlayersDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [players];
}

typedef $$PlayersTableCreateCompanionBuilder =
    PlayersCompanion Function({
      required String id,
      required String firstName,
      required String lastName1,
      Value<String?> lastName2,
      Value<DateTime?> birthDate,
      Value<int?> preferredNumber,
      Value<String?> preferredPosition,
      Value<String?> secondaryPosition,
      Value<String?> dominantFoot,
      Value<bool> active,
      Value<String?> notes,
      Value<int> rowid,
    });
typedef $$PlayersTableUpdateCompanionBuilder =
    PlayersCompanion Function({
      Value<String> id,
      Value<String> firstName,
      Value<String> lastName1,
      Value<String?> lastName2,
      Value<DateTime?> birthDate,
      Value<int?> preferredNumber,
      Value<String?> preferredPosition,
      Value<String?> secondaryPosition,
      Value<String?> dominantFoot,
      Value<bool> active,
      Value<String?> notes,
      Value<int> rowid,
    });

class $$PlayersTableFilterComposer
    extends Composer<_$AppDatabase, $PlayersTable> {
  $$PlayersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get firstName => $composableBuilder(
    column: $table.firstName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get lastName1 => $composableBuilder(
    column: $table.lastName1,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get lastName2 => $composableBuilder(
    column: $table.lastName2,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get birthDate => $composableBuilder(
    column: $table.birthDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get preferredNumber => $composableBuilder(
    column: $table.preferredNumber,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get preferredPosition => $composableBuilder(
    column: $table.preferredPosition,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get secondaryPosition => $composableBuilder(
    column: $table.secondaryPosition,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get dominantFoot => $composableBuilder(
    column: $table.dominantFoot,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get active => $composableBuilder(
    column: $table.active,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnFilters(column),
  );
}

class $$PlayersTableOrderingComposer
    extends Composer<_$AppDatabase, $PlayersTable> {
  $$PlayersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get firstName => $composableBuilder(
    column: $table.firstName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get lastName1 => $composableBuilder(
    column: $table.lastName1,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get lastName2 => $composableBuilder(
    column: $table.lastName2,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get birthDate => $composableBuilder(
    column: $table.birthDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get preferredNumber => $composableBuilder(
    column: $table.preferredNumber,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get preferredPosition => $composableBuilder(
    column: $table.preferredPosition,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get secondaryPosition => $composableBuilder(
    column: $table.secondaryPosition,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get dominantFoot => $composableBuilder(
    column: $table.dominantFoot,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get active => $composableBuilder(
    column: $table.active,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$PlayersTableAnnotationComposer
    extends Composer<_$AppDatabase, $PlayersTable> {
  $$PlayersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get firstName =>
      $composableBuilder(column: $table.firstName, builder: (column) => column);

  GeneratedColumn<String> get lastName1 =>
      $composableBuilder(column: $table.lastName1, builder: (column) => column);

  GeneratedColumn<String> get lastName2 =>
      $composableBuilder(column: $table.lastName2, builder: (column) => column);

  GeneratedColumn<DateTime> get birthDate =>
      $composableBuilder(column: $table.birthDate, builder: (column) => column);

  GeneratedColumn<int> get preferredNumber => $composableBuilder(
    column: $table.preferredNumber,
    builder: (column) => column,
  );

  GeneratedColumn<String> get preferredPosition => $composableBuilder(
    column: $table.preferredPosition,
    builder: (column) => column,
  );

  GeneratedColumn<String> get secondaryPosition => $composableBuilder(
    column: $table.secondaryPosition,
    builder: (column) => column,
  );

  GeneratedColumn<String> get dominantFoot => $composableBuilder(
    column: $table.dominantFoot,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get active =>
      $composableBuilder(column: $table.active, builder: (column) => column);

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);
}

class $$PlayersTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PlayersTable,
          Player,
          $$PlayersTableFilterComposer,
          $$PlayersTableOrderingComposer,
          $$PlayersTableAnnotationComposer,
          $$PlayersTableCreateCompanionBuilder,
          $$PlayersTableUpdateCompanionBuilder,
          (Player, BaseReferences<_$AppDatabase, $PlayersTable, Player>),
          Player,
          PrefetchHooks Function()
        > {
  $$PlayersTableTableManager(_$AppDatabase db, $PlayersTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PlayersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PlayersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PlayersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> firstName = const Value.absent(),
                Value<String> lastName1 = const Value.absent(),
                Value<String?> lastName2 = const Value.absent(),
                Value<DateTime?> birthDate = const Value.absent(),
                Value<int?> preferredNumber = const Value.absent(),
                Value<String?> preferredPosition = const Value.absent(),
                Value<String?> secondaryPosition = const Value.absent(),
                Value<String?> dominantFoot = const Value.absent(),
                Value<bool> active = const Value.absent(),
                Value<String?> notes = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PlayersCompanion(
                id: id,
                firstName: firstName,
                lastName1: lastName1,
                lastName2: lastName2,
                birthDate: birthDate,
                preferredNumber: preferredNumber,
                preferredPosition: preferredPosition,
                secondaryPosition: secondaryPosition,
                dominantFoot: dominantFoot,
                active: active,
                notes: notes,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String firstName,
                required String lastName1,
                Value<String?> lastName2 = const Value.absent(),
                Value<DateTime?> birthDate = const Value.absent(),
                Value<int?> preferredNumber = const Value.absent(),
                Value<String?> preferredPosition = const Value.absent(),
                Value<String?> secondaryPosition = const Value.absent(),
                Value<String?> dominantFoot = const Value.absent(),
                Value<bool> active = const Value.absent(),
                Value<String?> notes = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PlayersCompanion.insert(
                id: id,
                firstName: firstName,
                lastName1: lastName1,
                lastName2: lastName2,
                birthDate: birthDate,
                preferredNumber: preferredNumber,
                preferredPosition: preferredPosition,
                secondaryPosition: secondaryPosition,
                dominantFoot: dominantFoot,
                active: active,
                notes: notes,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$PlayersTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PlayersTable,
      Player,
      $$PlayersTableFilterComposer,
      $$PlayersTableOrderingComposer,
      $$PlayersTableAnnotationComposer,
      $$PlayersTableCreateCompanionBuilder,
      $$PlayersTableUpdateCompanionBuilder,
      (Player, BaseReferences<_$AppDatabase, $PlayersTable, Player>),
      Player,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$PlayersTableTableManager get players =>
      $$PlayersTableTableManager(_db, _db.players);
}
