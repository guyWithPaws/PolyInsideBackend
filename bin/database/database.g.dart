// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $ProfessorsTable extends Professors
    with TableInfo<$ProfessorsTable, Professor> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProfessorsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _avatarMeta = const VerificationMeta('avatar');
  @override
  late final GeneratedColumn<Uint8List> avatar = GeneratedColumn<Uint8List>(
      'avatar', aliasedName, false,
      type: DriftSqlType.blob, requiredDuringInsert: true);
  static const VerificationMeta _objectivityMeta =
      const VerificationMeta('objectivity');
  @override
  late final GeneratedColumn<double> objectivity = GeneratedColumn<double>(
      'objectivity', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _loyalityMeta =
      const VerificationMeta('loyality');
  @override
  late final GeneratedColumn<double> loyality = GeneratedColumn<double>(
      'loyality', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _professionalismMeta =
      const VerificationMeta('professionalism');
  @override
  late final GeneratedColumn<double> professionalism = GeneratedColumn<double>(
      'professionalism', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _harshnessMeta =
      const VerificationMeta('harshness');
  @override
  late final GeneratedColumn<double> harshness = GeneratedColumn<double>(
      'harshness', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, avatar, objectivity, loyality, professionalism, harshness];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'professors';
  @override
  VerificationContext validateIntegrity(Insertable<Professor> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('avatar')) {
      context.handle(_avatarMeta,
          avatar.isAcceptableOrUnknown(data['avatar']!, _avatarMeta));
    } else if (isInserting) {
      context.missing(_avatarMeta);
    }
    if (data.containsKey('objectivity')) {
      context.handle(
          _objectivityMeta,
          objectivity.isAcceptableOrUnknown(
              data['objectivity']!, _objectivityMeta));
    } else if (isInserting) {
      context.missing(_objectivityMeta);
    }
    if (data.containsKey('loyality')) {
      context.handle(_loyalityMeta,
          loyality.isAcceptableOrUnknown(data['loyality']!, _loyalityMeta));
    } else if (isInserting) {
      context.missing(_loyalityMeta);
    }
    if (data.containsKey('professionalism')) {
      context.handle(
          _professionalismMeta,
          professionalism.isAcceptableOrUnknown(
              data['professionalism']!, _professionalismMeta));
    } else if (isInserting) {
      context.missing(_professionalismMeta);
    }
    if (data.containsKey('harshness')) {
      context.handle(_harshnessMeta,
          harshness.isAcceptableOrUnknown(data['harshness']!, _harshnessMeta));
    } else if (isInserting) {
      context.missing(_harshnessMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Professor map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Professor(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      avatar: attachedDatabase.typeMapping
          .read(DriftSqlType.blob, data['${effectivePrefix}avatar'])!,
      objectivity: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}objectivity'])!,
      loyality: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}loyality'])!,
      professionalism: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}professionalism'])!,
      harshness: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}harshness'])!,
    );
  }

  @override
  $ProfessorsTable createAlias(String alias) {
    return $ProfessorsTable(attachedDatabase, alias);
  }
}

class Professor extends DataClass implements Insertable<Professor> {
  final int id;
  final String name;
  final Uint8List avatar;
  final double objectivity;
  final double loyality;
  final double professionalism;
  final double harshness;
  const Professor(
      {required this.id,
      required this.name,
      required this.avatar,
      required this.objectivity,
      required this.loyality,
      required this.professionalism,
      required this.harshness});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['avatar'] = Variable<Uint8List>(avatar);
    map['objectivity'] = Variable<double>(objectivity);
    map['loyality'] = Variable<double>(loyality);
    map['professionalism'] = Variable<double>(professionalism);
    map['harshness'] = Variable<double>(harshness);
    return map;
  }

  ProfessorsCompanion toCompanion(bool nullToAbsent) {
    return ProfessorsCompanion(
      id: Value(id),
      name: Value(name),
      avatar: Value(avatar),
      objectivity: Value(objectivity),
      loyality: Value(loyality),
      professionalism: Value(professionalism),
      harshness: Value(harshness),
    );
  }

  factory Professor.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Professor(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      avatar: serializer.fromJson<Uint8List>(json['avatar']),
      objectivity: serializer.fromJson<double>(json['objectivity']),
      loyality: serializer.fromJson<double>(json['loyality']),
      professionalism: serializer.fromJson<double>(json['professionalism']),
      harshness: serializer.fromJson<double>(json['harshness']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'avatar': serializer.toJson<Uint8List>(avatar),
      'objectivity': serializer.toJson<double>(objectivity),
      'loyality': serializer.toJson<double>(loyality),
      'professionalism': serializer.toJson<double>(professionalism),
      'harshness': serializer.toJson<double>(harshness),
    };
  }

  Professor copyWith(
          {int? id,
          String? name,
          Uint8List? avatar,
          double? objectivity,
          double? loyality,
          double? professionalism,
          double? harshness}) =>
      Professor(
        id: id ?? this.id,
        name: name ?? this.name,
        avatar: avatar ?? this.avatar,
        objectivity: objectivity ?? this.objectivity,
        loyality: loyality ?? this.loyality,
        professionalism: professionalism ?? this.professionalism,
        harshness: harshness ?? this.harshness,
      );
  Professor copyWithCompanion(ProfessorsCompanion data) {
    return Professor(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      avatar: data.avatar.present ? data.avatar.value : this.avatar,
      objectivity:
          data.objectivity.present ? data.objectivity.value : this.objectivity,
      loyality: data.loyality.present ? data.loyality.value : this.loyality,
      professionalism: data.professionalism.present
          ? data.professionalism.value
          : this.professionalism,
      harshness: data.harshness.present ? data.harshness.value : this.harshness,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Professor(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('avatar: $avatar, ')
          ..write('objectivity: $objectivity, ')
          ..write('loyality: $loyality, ')
          ..write('professionalism: $professionalism, ')
          ..write('harshness: $harshness')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, $driftBlobEquality.hash(avatar),
      objectivity, loyality, professionalism, harshness);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Professor &&
          other.id == this.id &&
          other.name == this.name &&
          $driftBlobEquality.equals(other.avatar, this.avatar) &&
          other.objectivity == this.objectivity &&
          other.loyality == this.loyality &&
          other.professionalism == this.professionalism &&
          other.harshness == this.harshness);
}

class ProfessorsCompanion extends UpdateCompanion<Professor> {
  final Value<int> id;
  final Value<String> name;
  final Value<Uint8List> avatar;
  final Value<double> objectivity;
  final Value<double> loyality;
  final Value<double> professionalism;
  final Value<double> harshness;
  const ProfessorsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.avatar = const Value.absent(),
    this.objectivity = const Value.absent(),
    this.loyality = const Value.absent(),
    this.professionalism = const Value.absent(),
    this.harshness = const Value.absent(),
  });
  ProfessorsCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required Uint8List avatar,
    required double objectivity,
    required double loyality,
    required double professionalism,
    required double harshness,
  })  : name = Value(name),
        avatar = Value(avatar),
        objectivity = Value(objectivity),
        loyality = Value(loyality),
        professionalism = Value(professionalism),
        harshness = Value(harshness);
  static Insertable<Professor> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<Uint8List>? avatar,
    Expression<double>? objectivity,
    Expression<double>? loyality,
    Expression<double>? professionalism,
    Expression<double>? harshness,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (avatar != null) 'avatar': avatar,
      if (objectivity != null) 'objectivity': objectivity,
      if (loyality != null) 'loyality': loyality,
      if (professionalism != null) 'professionalism': professionalism,
      if (harshness != null) 'harshness': harshness,
    });
  }

  ProfessorsCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<Uint8List>? avatar,
      Value<double>? objectivity,
      Value<double>? loyality,
      Value<double>? professionalism,
      Value<double>? harshness}) {
    return ProfessorsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      avatar: avatar ?? this.avatar,
      objectivity: objectivity ?? this.objectivity,
      loyality: loyality ?? this.loyality,
      professionalism: professionalism ?? this.professionalism,
      harshness: harshness ?? this.harshness,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (avatar.present) {
      map['avatar'] = Variable<Uint8List>(avatar.value);
    }
    if (objectivity.present) {
      map['objectivity'] = Variable<double>(objectivity.value);
    }
    if (loyality.present) {
      map['loyality'] = Variable<double>(loyality.value);
    }
    if (professionalism.present) {
      map['professionalism'] = Variable<double>(professionalism.value);
    }
    if (harshness.present) {
      map['harshness'] = Variable<double>(harshness.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProfessorsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('avatar: $avatar, ')
          ..write('objectivity: $objectivity, ')
          ..write('loyality: $loyality, ')
          ..write('professionalism: $professionalism, ')
          ..write('harshness: $harshness')
          ..write(')'))
        .toString();
  }
}

class $UsersTable extends Users with TableInfo<$UsersTable, User> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UsersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _avatarMeta = const VerificationMeta('avatar');
  @override
  late final GeneratedColumn<Uint8List> avatar = GeneratedColumn<Uint8List>(
      'avatar', aliasedName, false,
      type: DriftSqlType.blob, requiredDuringInsert: true);
  static const VerificationMeta _ratingMeta = const VerificationMeta('rating');
  @override
  late final GeneratedColumn<int> rating = GeneratedColumn<int>(
      'rating', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: Constant(0));
  @override
  List<GeneratedColumn> get $columns => [id, name, avatar, rating];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'users';
  @override
  VerificationContext validateIntegrity(Insertable<User> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('avatar')) {
      context.handle(_avatarMeta,
          avatar.isAcceptableOrUnknown(data['avatar']!, _avatarMeta));
    } else if (isInserting) {
      context.missing(_avatarMeta);
    }
    if (data.containsKey('rating')) {
      context.handle(_ratingMeta,
          rating.isAcceptableOrUnknown(data['rating']!, _ratingMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  User map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return User(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      avatar: attachedDatabase.typeMapping
          .read(DriftSqlType.blob, data['${effectivePrefix}avatar'])!,
      rating: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}rating'])!,
    );
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(attachedDatabase, alias);
  }
}

class User extends DataClass implements Insertable<User> {
  final int id;
  final String name;
  final Uint8List avatar;
  final int rating;
  const User(
      {required this.id,
      required this.name,
      required this.avatar,
      required this.rating});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['avatar'] = Variable<Uint8List>(avatar);
    map['rating'] = Variable<int>(rating);
    return map;
  }

  UsersCompanion toCompanion(bool nullToAbsent) {
    return UsersCompanion(
      id: Value(id),
      name: Value(name),
      avatar: Value(avatar),
      rating: Value(rating),
    );
  }

  factory User.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return User(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      avatar: serializer.fromJson<Uint8List>(json['avatar']),
      rating: serializer.fromJson<int>(json['rating']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'avatar': serializer.toJson<Uint8List>(avatar),
      'rating': serializer.toJson<int>(rating),
    };
  }

  User copyWith({int? id, String? name, Uint8List? avatar, int? rating}) =>
      User(
        id: id ?? this.id,
        name: name ?? this.name,
        avatar: avatar ?? this.avatar,
        rating: rating ?? this.rating,
      );
  User copyWithCompanion(UsersCompanion data) {
    return User(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      avatar: data.avatar.present ? data.avatar.value : this.avatar,
      rating: data.rating.present ? data.rating.value : this.rating,
    );
  }

  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('avatar: $avatar, ')
          ..write('rating: $rating')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, name, $driftBlobEquality.hash(avatar), rating);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is User &&
          other.id == this.id &&
          other.name == this.name &&
          $driftBlobEquality.equals(other.avatar, this.avatar) &&
          other.rating == this.rating);
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<int> id;
  final Value<String> name;
  final Value<Uint8List> avatar;
  final Value<int> rating;
  final Value<int> rowid;
  const UsersCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.avatar = const Value.absent(),
    this.rating = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UsersCompanion.insert({
    required int id,
    required String name,
    required Uint8List avatar,
    this.rating = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        name = Value(name),
        avatar = Value(avatar);
  static Insertable<User> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<Uint8List>? avatar,
    Expression<int>? rating,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (avatar != null) 'avatar': avatar,
      if (rating != null) 'rating': rating,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UsersCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<Uint8List>? avatar,
      Value<int>? rating,
      Value<int>? rowid}) {
    return UsersCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      avatar: avatar ?? this.avatar,
      rating: rating ?? this.rating,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (avatar.present) {
      map['avatar'] = Variable<Uint8List>(avatar.value);
    }
    if (rating.present) {
      map['rating'] = Variable<int>(rating.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('avatar: $avatar, ')
          ..write('rating: $rating, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ReviewsTable extends Reviews with TableInfo<$ReviewsTable, Review> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ReviewsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<int> userId = GeneratedColumn<int>(
      'user_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _professorIdMeta =
      const VerificationMeta('professorId');
  @override
  late final GeneratedColumn<int> professorId = GeneratedColumn<int>(
      'professor_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _commentMeta =
      const VerificationMeta('comment');
  @override
  late final GeneratedColumn<String> comment = GeneratedColumn<String>(
      'comment', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _objectivityMeta =
      const VerificationMeta('objectivity');
  @override
  late final GeneratedColumn<double> objectivity = GeneratedColumn<double>(
      'objectivity', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _loyalityMeta =
      const VerificationMeta('loyality');
  @override
  late final GeneratedColumn<double> loyality = GeneratedColumn<double>(
      'loyality', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _professionalismMeta =
      const VerificationMeta('professionalism');
  @override
  late final GeneratedColumn<double> professionalism = GeneratedColumn<double>(
      'professionalism', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _harshnessMeta =
      const VerificationMeta('harshness');
  @override
  late final GeneratedColumn<double> harshness = GeneratedColumn<double>(
      'harshness', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        userId,
        professorId,
        comment,
        objectivity,
        loyality,
        professionalism,
        harshness
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'reviews';
  @override
  VerificationContext validateIntegrity(Insertable<Review> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('professor_id')) {
      context.handle(
          _professorIdMeta,
          professorId.isAcceptableOrUnknown(
              data['professor_id']!, _professorIdMeta));
    } else if (isInserting) {
      context.missing(_professorIdMeta);
    }
    if (data.containsKey('comment')) {
      context.handle(_commentMeta,
          comment.isAcceptableOrUnknown(data['comment']!, _commentMeta));
    } else if (isInserting) {
      context.missing(_commentMeta);
    }
    if (data.containsKey('objectivity')) {
      context.handle(
          _objectivityMeta,
          objectivity.isAcceptableOrUnknown(
              data['objectivity']!, _objectivityMeta));
    } else if (isInserting) {
      context.missing(_objectivityMeta);
    }
    if (data.containsKey('loyality')) {
      context.handle(_loyalityMeta,
          loyality.isAcceptableOrUnknown(data['loyality']!, _loyalityMeta));
    } else if (isInserting) {
      context.missing(_loyalityMeta);
    }
    if (data.containsKey('professionalism')) {
      context.handle(
          _professionalismMeta,
          professionalism.isAcceptableOrUnknown(
              data['professionalism']!, _professionalismMeta));
    } else if (isInserting) {
      context.missing(_professionalismMeta);
    }
    if (data.containsKey('harshness')) {
      context.handle(_harshnessMeta,
          harshness.isAcceptableOrUnknown(data['harshness']!, _harshnessMeta));
    } else if (isInserting) {
      context.missing(_harshnessMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  Review map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Review(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}user_id'])!,
      professorId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}professor_id'])!,
      comment: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}comment'])!,
      objectivity: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}objectivity'])!,
      loyality: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}loyality'])!,
      professionalism: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}professionalism'])!,
      harshness: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}harshness'])!,
    );
  }

  @override
  $ReviewsTable createAlias(String alias) {
    return $ReviewsTable(attachedDatabase, alias);
  }
}

class Review extends DataClass implements Insertable<Review> {
  final int id;
  final int userId;
  final int professorId;
  final String comment;
  final double objectivity;
  final double loyality;
  final double professionalism;
  final double harshness;
  const Review(
      {required this.id,
      required this.userId,
      required this.professorId,
      required this.comment,
      required this.objectivity,
      required this.loyality,
      required this.professionalism,
      required this.harshness});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['user_id'] = Variable<int>(userId);
    map['professor_id'] = Variable<int>(professorId);
    map['comment'] = Variable<String>(comment);
    map['objectivity'] = Variable<double>(objectivity);
    map['loyality'] = Variable<double>(loyality);
    map['professionalism'] = Variable<double>(professionalism);
    map['harshness'] = Variable<double>(harshness);
    return map;
  }

  ReviewsCompanion toCompanion(bool nullToAbsent) {
    return ReviewsCompanion(
      id: Value(id),
      userId: Value(userId),
      professorId: Value(professorId),
      comment: Value(comment),
      objectivity: Value(objectivity),
      loyality: Value(loyality),
      professionalism: Value(professionalism),
      harshness: Value(harshness),
    );
  }

  factory Review.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Review(
      id: serializer.fromJson<int>(json['id']),
      userId: serializer.fromJson<int>(json['userId']),
      professorId: serializer.fromJson<int>(json['professorId']),
      comment: serializer.fromJson<String>(json['comment']),
      objectivity: serializer.fromJson<double>(json['objectivity']),
      loyality: serializer.fromJson<double>(json['loyality']),
      professionalism: serializer.fromJson<double>(json['professionalism']),
      harshness: serializer.fromJson<double>(json['harshness']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'userId': serializer.toJson<int>(userId),
      'professorId': serializer.toJson<int>(professorId),
      'comment': serializer.toJson<String>(comment),
      'objectivity': serializer.toJson<double>(objectivity),
      'loyality': serializer.toJson<double>(loyality),
      'professionalism': serializer.toJson<double>(professionalism),
      'harshness': serializer.toJson<double>(harshness),
    };
  }

  Review copyWith(
          {int? id,
          int? userId,
          int? professorId,
          String? comment,
          double? objectivity,
          double? loyality,
          double? professionalism,
          double? harshness}) =>
      Review(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        professorId: professorId ?? this.professorId,
        comment: comment ?? this.comment,
        objectivity: objectivity ?? this.objectivity,
        loyality: loyality ?? this.loyality,
        professionalism: professionalism ?? this.professionalism,
        harshness: harshness ?? this.harshness,
      );
  Review copyWithCompanion(ReviewsCompanion data) {
    return Review(
      id: data.id.present ? data.id.value : this.id,
      userId: data.userId.present ? data.userId.value : this.userId,
      professorId:
          data.professorId.present ? data.professorId.value : this.professorId,
      comment: data.comment.present ? data.comment.value : this.comment,
      objectivity:
          data.objectivity.present ? data.objectivity.value : this.objectivity,
      loyality: data.loyality.present ? data.loyality.value : this.loyality,
      professionalism: data.professionalism.present
          ? data.professionalism.value
          : this.professionalism,
      harshness: data.harshness.present ? data.harshness.value : this.harshness,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Review(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('professorId: $professorId, ')
          ..write('comment: $comment, ')
          ..write('objectivity: $objectivity, ')
          ..write('loyality: $loyality, ')
          ..write('professionalism: $professionalism, ')
          ..write('harshness: $harshness')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, userId, professorId, comment, objectivity,
      loyality, professionalism, harshness);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Review &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.professorId == this.professorId &&
          other.comment == this.comment &&
          other.objectivity == this.objectivity &&
          other.loyality == this.loyality &&
          other.professionalism == this.professionalism &&
          other.harshness == this.harshness);
}

class ReviewsCompanion extends UpdateCompanion<Review> {
  final Value<int> id;
  final Value<int> userId;
  final Value<int> professorId;
  final Value<String> comment;
  final Value<double> objectivity;
  final Value<double> loyality;
  final Value<double> professionalism;
  final Value<double> harshness;
  final Value<int> rowid;
  const ReviewsCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.professorId = const Value.absent(),
    this.comment = const Value.absent(),
    this.objectivity = const Value.absent(),
    this.loyality = const Value.absent(),
    this.professionalism = const Value.absent(),
    this.harshness = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ReviewsCompanion.insert({
    required int id,
    required int userId,
    required int professorId,
    required String comment,
    required double objectivity,
    required double loyality,
    required double professionalism,
    required double harshness,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        userId = Value(userId),
        professorId = Value(professorId),
        comment = Value(comment),
        objectivity = Value(objectivity),
        loyality = Value(loyality),
        professionalism = Value(professionalism),
        harshness = Value(harshness);
  static Insertable<Review> custom({
    Expression<int>? id,
    Expression<int>? userId,
    Expression<int>? professorId,
    Expression<String>? comment,
    Expression<double>? objectivity,
    Expression<double>? loyality,
    Expression<double>? professionalism,
    Expression<double>? harshness,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (professorId != null) 'professor_id': professorId,
      if (comment != null) 'comment': comment,
      if (objectivity != null) 'objectivity': objectivity,
      if (loyality != null) 'loyality': loyality,
      if (professionalism != null) 'professionalism': professionalism,
      if (harshness != null) 'harshness': harshness,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ReviewsCompanion copyWith(
      {Value<int>? id,
      Value<int>? userId,
      Value<int>? professorId,
      Value<String>? comment,
      Value<double>? objectivity,
      Value<double>? loyality,
      Value<double>? professionalism,
      Value<double>? harshness,
      Value<int>? rowid}) {
    return ReviewsCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      professorId: professorId ?? this.professorId,
      comment: comment ?? this.comment,
      objectivity: objectivity ?? this.objectivity,
      loyality: loyality ?? this.loyality,
      professionalism: professionalism ?? this.professionalism,
      harshness: harshness ?? this.harshness,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<int>(userId.value);
    }
    if (professorId.present) {
      map['professor_id'] = Variable<int>(professorId.value);
    }
    if (comment.present) {
      map['comment'] = Variable<String>(comment.value);
    }
    if (objectivity.present) {
      map['objectivity'] = Variable<double>(objectivity.value);
    }
    if (loyality.present) {
      map['loyality'] = Variable<double>(loyality.value);
    }
    if (professionalism.present) {
      map['professionalism'] = Variable<double>(professionalism.value);
    }
    if (harshness.present) {
      map['harshness'] = Variable<double>(harshness.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ReviewsCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('professorId: $professorId, ')
          ..write('comment: $comment, ')
          ..write('objectivity: $objectivity, ')
          ..write('loyality: $loyality, ')
          ..write('professionalism: $professionalism, ')
          ..write('harshness: $harshness, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $ProfessorsTable professors = $ProfessorsTable(this);
  late final $UsersTable users = $UsersTable(this);
  late final $ReviewsTable reviews = $ReviewsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [professors, users, reviews];
}

typedef $$ProfessorsTableCreateCompanionBuilder = ProfessorsCompanion Function({
  Value<int> id,
  required String name,
  required Uint8List avatar,
  required double objectivity,
  required double loyality,
  required double professionalism,
  required double harshness,
});
typedef $$ProfessorsTableUpdateCompanionBuilder = ProfessorsCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<Uint8List> avatar,
  Value<double> objectivity,
  Value<double> loyality,
  Value<double> professionalism,
  Value<double> harshness,
});

class $$ProfessorsTableFilterComposer
    extends FilterComposer<_$AppDatabase, $ProfessorsTable> {
  $$ProfessorsTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<Uint8List> get avatar => $state.composableBuilder(
      column: $state.table.avatar,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get objectivity => $state.composableBuilder(
      column: $state.table.objectivity,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get loyality => $state.composableBuilder(
      column: $state.table.loyality,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get professionalism => $state.composableBuilder(
      column: $state.table.professionalism,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get harshness => $state.composableBuilder(
      column: $state.table.harshness,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$ProfessorsTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $ProfessorsTable> {
  $$ProfessorsTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<Uint8List> get avatar => $state.composableBuilder(
      column: $state.table.avatar,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get objectivity => $state.composableBuilder(
      column: $state.table.objectivity,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get loyality => $state.composableBuilder(
      column: $state.table.loyality,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get professionalism => $state.composableBuilder(
      column: $state.table.professionalism,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get harshness => $state.composableBuilder(
      column: $state.table.harshness,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$ProfessorsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ProfessorsTable,
    Professor,
    $$ProfessorsTableFilterComposer,
    $$ProfessorsTableOrderingComposer,
    $$ProfessorsTableCreateCompanionBuilder,
    $$ProfessorsTableUpdateCompanionBuilder,
    (Professor, BaseReferences<_$AppDatabase, $ProfessorsTable, Professor>),
    Professor,
    PrefetchHooks Function()> {
  $$ProfessorsTableTableManager(_$AppDatabase db, $ProfessorsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$ProfessorsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$ProfessorsTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<Uint8List> avatar = const Value.absent(),
            Value<double> objectivity = const Value.absent(),
            Value<double> loyality = const Value.absent(),
            Value<double> professionalism = const Value.absent(),
            Value<double> harshness = const Value.absent(),
          }) =>
              ProfessorsCompanion(
            id: id,
            name: name,
            avatar: avatar,
            objectivity: objectivity,
            loyality: loyality,
            professionalism: professionalism,
            harshness: harshness,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            required Uint8List avatar,
            required double objectivity,
            required double loyality,
            required double professionalism,
            required double harshness,
          }) =>
              ProfessorsCompanion.insert(
            id: id,
            name: name,
            avatar: avatar,
            objectivity: objectivity,
            loyality: loyality,
            professionalism: professionalism,
            harshness: harshness,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ProfessorsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ProfessorsTable,
    Professor,
    $$ProfessorsTableFilterComposer,
    $$ProfessorsTableOrderingComposer,
    $$ProfessorsTableCreateCompanionBuilder,
    $$ProfessorsTableUpdateCompanionBuilder,
    (Professor, BaseReferences<_$AppDatabase, $ProfessorsTable, Professor>),
    Professor,
    PrefetchHooks Function()>;
typedef $$UsersTableCreateCompanionBuilder = UsersCompanion Function({
  required int id,
  required String name,
  required Uint8List avatar,
  Value<int> rating,
  Value<int> rowid,
});
typedef $$UsersTableUpdateCompanionBuilder = UsersCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<Uint8List> avatar,
  Value<int> rating,
  Value<int> rowid,
});

class $$UsersTableFilterComposer
    extends FilterComposer<_$AppDatabase, $UsersTable> {
  $$UsersTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<Uint8List> get avatar => $state.composableBuilder(
      column: $state.table.avatar,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get rating => $state.composableBuilder(
      column: $state.table.rating,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$UsersTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $UsersTable> {
  $$UsersTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<Uint8List> get avatar => $state.composableBuilder(
      column: $state.table.avatar,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get rating => $state.composableBuilder(
      column: $state.table.rating,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$UsersTableTableManager extends RootTableManager<
    _$AppDatabase,
    $UsersTable,
    User,
    $$UsersTableFilterComposer,
    $$UsersTableOrderingComposer,
    $$UsersTableCreateCompanionBuilder,
    $$UsersTableUpdateCompanionBuilder,
    (User, BaseReferences<_$AppDatabase, $UsersTable, User>),
    User,
    PrefetchHooks Function()> {
  $$UsersTableTableManager(_$AppDatabase db, $UsersTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$UsersTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$UsersTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<Uint8List> avatar = const Value.absent(),
            Value<int> rating = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              UsersCompanion(
            id: id,
            name: name,
            avatar: avatar,
            rating: rating,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required int id,
            required String name,
            required Uint8List avatar,
            Value<int> rating = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              UsersCompanion.insert(
            id: id,
            name: name,
            avatar: avatar,
            rating: rating,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$UsersTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $UsersTable,
    User,
    $$UsersTableFilterComposer,
    $$UsersTableOrderingComposer,
    $$UsersTableCreateCompanionBuilder,
    $$UsersTableUpdateCompanionBuilder,
    (User, BaseReferences<_$AppDatabase, $UsersTable, User>),
    User,
    PrefetchHooks Function()>;
typedef $$ReviewsTableCreateCompanionBuilder = ReviewsCompanion Function({
  required int id,
  required int userId,
  required int professorId,
  required String comment,
  required double objectivity,
  required double loyality,
  required double professionalism,
  required double harshness,
  Value<int> rowid,
});
typedef $$ReviewsTableUpdateCompanionBuilder = ReviewsCompanion Function({
  Value<int> id,
  Value<int> userId,
  Value<int> professorId,
  Value<String> comment,
  Value<double> objectivity,
  Value<double> loyality,
  Value<double> professionalism,
  Value<double> harshness,
  Value<int> rowid,
});

class $$ReviewsTableFilterComposer
    extends FilterComposer<_$AppDatabase, $ReviewsTable> {
  $$ReviewsTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get userId => $state.composableBuilder(
      column: $state.table.userId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get professorId => $state.composableBuilder(
      column: $state.table.professorId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get comment => $state.composableBuilder(
      column: $state.table.comment,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get objectivity => $state.composableBuilder(
      column: $state.table.objectivity,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get loyality => $state.composableBuilder(
      column: $state.table.loyality,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get professionalism => $state.composableBuilder(
      column: $state.table.professionalism,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get harshness => $state.composableBuilder(
      column: $state.table.harshness,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$ReviewsTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $ReviewsTable> {
  $$ReviewsTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get userId => $state.composableBuilder(
      column: $state.table.userId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get professorId => $state.composableBuilder(
      column: $state.table.professorId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get comment => $state.composableBuilder(
      column: $state.table.comment,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get objectivity => $state.composableBuilder(
      column: $state.table.objectivity,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get loyality => $state.composableBuilder(
      column: $state.table.loyality,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get professionalism => $state.composableBuilder(
      column: $state.table.professionalism,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get harshness => $state.composableBuilder(
      column: $state.table.harshness,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$ReviewsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ReviewsTable,
    Review,
    $$ReviewsTableFilterComposer,
    $$ReviewsTableOrderingComposer,
    $$ReviewsTableCreateCompanionBuilder,
    $$ReviewsTableUpdateCompanionBuilder,
    (Review, BaseReferences<_$AppDatabase, $ReviewsTable, Review>),
    Review,
    PrefetchHooks Function()> {
  $$ReviewsTableTableManager(_$AppDatabase db, $ReviewsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$ReviewsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$ReviewsTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> userId = const Value.absent(),
            Value<int> professorId = const Value.absent(),
            Value<String> comment = const Value.absent(),
            Value<double> objectivity = const Value.absent(),
            Value<double> loyality = const Value.absent(),
            Value<double> professionalism = const Value.absent(),
            Value<double> harshness = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ReviewsCompanion(
            id: id,
            userId: userId,
            professorId: professorId,
            comment: comment,
            objectivity: objectivity,
            loyality: loyality,
            professionalism: professionalism,
            harshness: harshness,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required int id,
            required int userId,
            required int professorId,
            required String comment,
            required double objectivity,
            required double loyality,
            required double professionalism,
            required double harshness,
            Value<int> rowid = const Value.absent(),
          }) =>
              ReviewsCompanion.insert(
            id: id,
            userId: userId,
            professorId: professorId,
            comment: comment,
            objectivity: objectivity,
            loyality: loyality,
            professionalism: professionalism,
            harshness: harshness,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ReviewsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ReviewsTable,
    Review,
    $$ReviewsTableFilterComposer,
    $$ReviewsTableOrderingComposer,
    $$ReviewsTableCreateCompanionBuilder,
    $$ReviewsTableUpdateCompanionBuilder,
    (Review, BaseReferences<_$AppDatabase, $ReviewsTable, Review>),
    Review,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$ProfessorsTableTableManager get professors =>
      $$ProfessorsTableTableManager(_db, _db.professors);
  $$UsersTableTableManager get users =>
      $$UsersTableTableManager(_db, _db.users);
  $$ReviewsTableTableManager get reviews =>
      $$ReviewsTableTableManager(_db, _db.reviews);
}
