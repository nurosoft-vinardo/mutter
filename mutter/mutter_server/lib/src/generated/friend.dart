/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: unnecessary_null_comparison

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i2;

abstract class Friend implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Friend._({
    this.id,
    required this.senderId,
    this.sender,
    required this.recipientId,
    this.recipient,
  });

  factory Friend({
    int? id,
    required int senderId,
    _i2.UserInfo? sender,
    required int recipientId,
    _i2.UserInfo? recipient,
  }) = _FriendImpl;

  factory Friend.fromJson(Map<String, dynamic> jsonSerialization) {
    return Friend(
      id: jsonSerialization['id'] as int?,
      senderId: jsonSerialization['senderId'] as int,
      sender: jsonSerialization['sender'] == null
          ? null
          : _i2.UserInfo.fromJson(
              (jsonSerialization['sender'] as Map<String, dynamic>)),
      recipientId: jsonSerialization['recipientId'] as int,
      recipient: jsonSerialization['recipient'] == null
          ? null
          : _i2.UserInfo.fromJson(
              (jsonSerialization['recipient'] as Map<String, dynamic>)),
    );
  }

  static final t = FriendTable();

  static const db = FriendRepository._();

  @override
  int? id;

  int senderId;

  _i2.UserInfo? sender;

  int recipientId;

  _i2.UserInfo? recipient;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Friend]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Friend copyWith({
    int? id,
    int? senderId,
    _i2.UserInfo? sender,
    int? recipientId,
    _i2.UserInfo? recipient,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'senderId': senderId,
      if (sender != null) 'sender': sender?.toJson(),
      'recipientId': recipientId,
      if (recipient != null) 'recipient': recipient?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'senderId': senderId,
      if (sender != null) 'sender': sender?.toJsonForProtocol(),
      'recipientId': recipientId,
      if (recipient != null) 'recipient': recipient?.toJsonForProtocol(),
    };
  }

  static FriendInclude include({
    _i2.UserInfoInclude? sender,
    _i2.UserInfoInclude? recipient,
  }) {
    return FriendInclude._(
      sender: sender,
      recipient: recipient,
    );
  }

  static FriendIncludeList includeList({
    _i1.WhereExpressionBuilder<FriendTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<FriendTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FriendTable>? orderByList,
    FriendInclude? include,
  }) {
    return FriendIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Friend.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Friend.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _FriendImpl extends Friend {
  _FriendImpl({
    int? id,
    required int senderId,
    _i2.UserInfo? sender,
    required int recipientId,
    _i2.UserInfo? recipient,
  }) : super._(
          id: id,
          senderId: senderId,
          sender: sender,
          recipientId: recipientId,
          recipient: recipient,
        );

  /// Returns a shallow copy of this [Friend]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Friend copyWith({
    Object? id = _Undefined,
    int? senderId,
    Object? sender = _Undefined,
    int? recipientId,
    Object? recipient = _Undefined,
  }) {
    return Friend(
      id: id is int? ? id : this.id,
      senderId: senderId ?? this.senderId,
      sender: sender is _i2.UserInfo? ? sender : this.sender?.copyWith(),
      recipientId: recipientId ?? this.recipientId,
      recipient:
          recipient is _i2.UserInfo? ? recipient : this.recipient?.copyWith(),
    );
  }
}

class FriendTable extends _i1.Table<int?> {
  FriendTable({super.tableRelation}) : super(tableName: 'friend') {
    senderId = _i1.ColumnInt(
      'senderId',
      this,
    );
    recipientId = _i1.ColumnInt(
      'recipientId',
      this,
    );
  }

  late final _i1.ColumnInt senderId;

  _i2.UserInfoTable? _sender;

  late final _i1.ColumnInt recipientId;

  _i2.UserInfoTable? _recipient;

  _i2.UserInfoTable get sender {
    if (_sender != null) return _sender!;
    _sender = _i1.createRelationTable(
      relationFieldName: 'sender',
      field: Friend.t.senderId,
      foreignField: _i2.UserInfo.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserInfoTable(tableRelation: foreignTableRelation),
    );
    return _sender!;
  }

  _i2.UserInfoTable get recipient {
    if (_recipient != null) return _recipient!;
    _recipient = _i1.createRelationTable(
      relationFieldName: 'recipient',
      field: Friend.t.recipientId,
      foreignField: _i2.UserInfo.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserInfoTable(tableRelation: foreignTableRelation),
    );
    return _recipient!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        senderId,
        recipientId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'sender') {
      return sender;
    }
    if (relationField == 'recipient') {
      return recipient;
    }
    return null;
  }
}

class FriendInclude extends _i1.IncludeObject {
  FriendInclude._({
    _i2.UserInfoInclude? sender,
    _i2.UserInfoInclude? recipient,
  }) {
    _sender = sender;
    _recipient = recipient;
  }

  _i2.UserInfoInclude? _sender;

  _i2.UserInfoInclude? _recipient;

  @override
  Map<String, _i1.Include?> get includes => {
        'sender': _sender,
        'recipient': _recipient,
      };

  @override
  _i1.Table<int?> get table => Friend.t;
}

class FriendIncludeList extends _i1.IncludeList {
  FriendIncludeList._({
    _i1.WhereExpressionBuilder<FriendTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Friend.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Friend.t;
}

class FriendRepository {
  const FriendRepository._();

  final attachRow = const FriendAttachRowRepository._();

  /// Returns a list of [Friend]s matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order of the items use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// The maximum number of items can be set by [limit]. If no limit is set,
  /// all items matching the query will be returned.
  ///
  /// [offset] defines how many items to skip, after which [limit] (or all)
  /// items are read from the database.
  ///
  /// ```dart
  /// var persons = await Persons.db.find(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.firstName,
  ///   limit: 100,
  /// );
  /// ```
  Future<List<Friend>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FriendTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<FriendTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FriendTable>? orderByList,
    _i1.Transaction? transaction,
    FriendInclude? include,
  }) async {
    return session.db.find<Friend>(
      where: where?.call(Friend.t),
      orderBy: orderBy?.call(Friend.t),
      orderByList: orderByList?.call(Friend.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Returns the first matching [Friend] matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// [offset] defines how many items to skip, after which the next one will be picked.
  ///
  /// ```dart
  /// var youngestPerson = await Persons.db.findFirstRow(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.age,
  /// );
  /// ```
  Future<Friend?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FriendTable>? where,
    int? offset,
    _i1.OrderByBuilder<FriendTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FriendTable>? orderByList,
    _i1.Transaction? transaction,
    FriendInclude? include,
  }) async {
    return session.db.findFirstRow<Friend>(
      where: where?.call(Friend.t),
      orderBy: orderBy?.call(Friend.t),
      orderByList: orderByList?.call(Friend.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Finds a single [Friend] by its [id] or null if no such row exists.
  Future<Friend?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    FriendInclude? include,
  }) async {
    return session.db.findById<Friend>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  /// Inserts all [Friend]s in the list and returns the inserted rows.
  ///
  /// The returned [Friend]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Friend>> insert(
    _i1.Session session,
    List<Friend> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Friend>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Friend] and returns the inserted row.
  ///
  /// The returned [Friend] will have its `id` field set.
  Future<Friend> insertRow(
    _i1.Session session,
    Friend row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Friend>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Friend]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Friend>> update(
    _i1.Session session,
    List<Friend> rows, {
    _i1.ColumnSelections<FriendTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Friend>(
      rows,
      columns: columns?.call(Friend.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Friend]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Friend> updateRow(
    _i1.Session session,
    Friend row, {
    _i1.ColumnSelections<FriendTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Friend>(
      row,
      columns: columns?.call(Friend.t),
      transaction: transaction,
    );
  }

  /// Deletes all [Friend]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Friend>> delete(
    _i1.Session session,
    List<Friend> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Friend>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Friend].
  Future<Friend> deleteRow(
    _i1.Session session,
    Friend row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Friend>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Friend>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<FriendTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Friend>(
      where: where(Friend.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FriendTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Friend>(
      where: where?.call(Friend.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class FriendAttachRowRepository {
  const FriendAttachRowRepository._();

  /// Creates a relation between the given [Friend] and [UserInfo]
  /// by setting the [Friend]'s foreign key `senderId` to refer to the [UserInfo].
  Future<void> sender(
    _i1.Session session,
    Friend friend,
    _i2.UserInfo sender, {
    _i1.Transaction? transaction,
  }) async {
    if (friend.id == null) {
      throw ArgumentError.notNull('friend.id');
    }
    if (sender.id == null) {
      throw ArgumentError.notNull('sender.id');
    }

    var $friend = friend.copyWith(senderId: sender.id);
    await session.db.updateRow<Friend>(
      $friend,
      columns: [Friend.t.senderId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [Friend] and [UserInfo]
  /// by setting the [Friend]'s foreign key `recipientId` to refer to the [UserInfo].
  Future<void> recipient(
    _i1.Session session,
    Friend friend,
    _i2.UserInfo recipient, {
    _i1.Transaction? transaction,
  }) async {
    if (friend.id == null) {
      throw ArgumentError.notNull('friend.id');
    }
    if (recipient.id == null) {
      throw ArgumentError.notNull('recipient.id');
    }

    var $friend = friend.copyWith(recipientId: recipient.id);
    await session.db.updateRow<Friend>(
      $friend,
      columns: [Friend.t.recipientId],
      transaction: transaction,
    );
  }
}
