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
import 'friend.dart' as _i2;
import 'attachment.dart' as _i3;

abstract class Message
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Message._({
    this.id,
    required this.friendId,
    this.friend,
    required this.text,
    this.attachments,
    DateTime? dateSent,
    this.dateReceived,
    this.dateRead,
    required this.failed,
  }) : dateSent = dateSent ?? DateTime.now();

  factory Message({
    int? id,
    required int friendId,
    _i2.Friend? friend,
    required String text,
    List<_i3.Attachment>? attachments,
    DateTime? dateSent,
    DateTime? dateReceived,
    DateTime? dateRead,
    required bool failed,
  }) = _MessageImpl;

  factory Message.fromJson(Map<String, dynamic> jsonSerialization) {
    return Message(
      id: jsonSerialization['id'] as int?,
      friendId: jsonSerialization['friendId'] as int,
      friend: jsonSerialization['friend'] == null
          ? null
          : _i2.Friend.fromJson(
              (jsonSerialization['friend'] as Map<String, dynamic>)),
      text: jsonSerialization['text'] as String,
      attachments: (jsonSerialization['attachments'] as List?)
          ?.map((e) => _i3.Attachment.fromJson((e as Map<String, dynamic>)))
          .toList(),
      dateSent:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['dateSent']),
      dateReceived: jsonSerialization['dateReceived'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
              jsonSerialization['dateReceived']),
      dateRead: jsonSerialization['dateRead'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['dateRead']),
      failed: jsonSerialization['failed'] as bool,
    );
  }

  static final t = MessageTable();

  static const db = MessageRepository._();

  @override
  int? id;

  int friendId;

  _i2.Friend? friend;

  String text;

  List<_i3.Attachment>? attachments;

  DateTime dateSent;

  DateTime? dateReceived;

  DateTime? dateRead;

  bool failed;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Message]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Message copyWith({
    int? id,
    int? friendId,
    _i2.Friend? friend,
    String? text,
    List<_i3.Attachment>? attachments,
    DateTime? dateSent,
    DateTime? dateReceived,
    DateTime? dateRead,
    bool? failed,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'friendId': friendId,
      if (friend != null) 'friend': friend?.toJson(),
      'text': text,
      if (attachments != null)
        'attachments': attachments?.toJson(valueToJson: (v) => v.toJson()),
      'dateSent': dateSent.toJson(),
      if (dateReceived != null) 'dateReceived': dateReceived?.toJson(),
      if (dateRead != null) 'dateRead': dateRead?.toJson(),
      'failed': failed,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'friendId': friendId,
      if (friend != null) 'friend': friend?.toJsonForProtocol(),
      'text': text,
      if (attachments != null)
        'attachments':
            attachments?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      'dateSent': dateSent.toJson(),
      if (dateReceived != null) 'dateReceived': dateReceived?.toJson(),
      if (dateRead != null) 'dateRead': dateRead?.toJson(),
      'failed': failed,
    };
  }

  static MessageInclude include({
    _i2.FriendInclude? friend,
    _i3.AttachmentIncludeList? attachments,
  }) {
    return MessageInclude._(
      friend: friend,
      attachments: attachments,
    );
  }

  static MessageIncludeList includeList({
    _i1.WhereExpressionBuilder<MessageTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MessageTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MessageTable>? orderByList,
    MessageInclude? include,
  }) {
    return MessageIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Message.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Message.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _MessageImpl extends Message {
  _MessageImpl({
    int? id,
    required int friendId,
    _i2.Friend? friend,
    required String text,
    List<_i3.Attachment>? attachments,
    DateTime? dateSent,
    DateTime? dateReceived,
    DateTime? dateRead,
    required bool failed,
  }) : super._(
          id: id,
          friendId: friendId,
          friend: friend,
          text: text,
          attachments: attachments,
          dateSent: dateSent,
          dateReceived: dateReceived,
          dateRead: dateRead,
          failed: failed,
        );

  /// Returns a shallow copy of this [Message]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Message copyWith({
    Object? id = _Undefined,
    int? friendId,
    Object? friend = _Undefined,
    String? text,
    Object? attachments = _Undefined,
    DateTime? dateSent,
    Object? dateReceived = _Undefined,
    Object? dateRead = _Undefined,
    bool? failed,
  }) {
    return Message(
      id: id is int? ? id : this.id,
      friendId: friendId ?? this.friendId,
      friend: friend is _i2.Friend? ? friend : this.friend?.copyWith(),
      text: text ?? this.text,
      attachments: attachments is List<_i3.Attachment>?
          ? attachments
          : this.attachments?.map((e0) => e0.copyWith()).toList(),
      dateSent: dateSent ?? this.dateSent,
      dateReceived:
          dateReceived is DateTime? ? dateReceived : this.dateReceived,
      dateRead: dateRead is DateTime? ? dateRead : this.dateRead,
      failed: failed ?? this.failed,
    );
  }
}

class MessageTable extends _i1.Table<int?> {
  MessageTable({super.tableRelation}) : super(tableName: 'message') {
    friendId = _i1.ColumnInt(
      'friendId',
      this,
    );
    text = _i1.ColumnString(
      'text',
      this,
    );
    dateSent = _i1.ColumnDateTime(
      'dateSent',
      this,
      hasDefault: true,
    );
    dateReceived = _i1.ColumnDateTime(
      'dateReceived',
      this,
    );
    dateRead = _i1.ColumnDateTime(
      'dateRead',
      this,
    );
    failed = _i1.ColumnBool(
      'failed',
      this,
    );
  }

  late final _i1.ColumnInt friendId;

  _i2.FriendTable? _friend;

  late final _i1.ColumnString text;

  _i3.AttachmentTable? ___attachments;

  _i1.ManyRelation<_i3.AttachmentTable>? _attachments;

  late final _i1.ColumnDateTime dateSent;

  late final _i1.ColumnDateTime dateReceived;

  late final _i1.ColumnDateTime dateRead;

  late final _i1.ColumnBool failed;

  _i2.FriendTable get friend {
    if (_friend != null) return _friend!;
    _friend = _i1.createRelationTable(
      relationFieldName: 'friend',
      field: Message.t.friendId,
      foreignField: _i2.Friend.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.FriendTable(tableRelation: foreignTableRelation),
    );
    return _friend!;
  }

  _i3.AttachmentTable get __attachments {
    if (___attachments != null) return ___attachments!;
    ___attachments = _i1.createRelationTable(
      relationFieldName: '__attachments',
      field: Message.t.id,
      foreignField: _i3.Attachment.t.$_messageAttachmentsMessageId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.AttachmentTable(tableRelation: foreignTableRelation),
    );
    return ___attachments!;
  }

  _i1.ManyRelation<_i3.AttachmentTable> get attachments {
    if (_attachments != null) return _attachments!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'attachments',
      field: Message.t.id,
      foreignField: _i3.Attachment.t.$_messageAttachmentsMessageId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.AttachmentTable(tableRelation: foreignTableRelation),
    );
    _attachments = _i1.ManyRelation<_i3.AttachmentTable>(
      tableWithRelations: relationTable,
      table: _i3.AttachmentTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _attachments!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        friendId,
        text,
        dateSent,
        dateReceived,
        dateRead,
        failed,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'friend') {
      return friend;
    }
    if (relationField == 'attachments') {
      return __attachments;
    }
    return null;
  }
}

class MessageInclude extends _i1.IncludeObject {
  MessageInclude._({
    _i2.FriendInclude? friend,
    _i3.AttachmentIncludeList? attachments,
  }) {
    _friend = friend;
    _attachments = attachments;
  }

  _i2.FriendInclude? _friend;

  _i3.AttachmentIncludeList? _attachments;

  @override
  Map<String, _i1.Include?> get includes => {
        'friend': _friend,
        'attachments': _attachments,
      };

  @override
  _i1.Table<int?> get table => Message.t;
}

class MessageIncludeList extends _i1.IncludeList {
  MessageIncludeList._({
    _i1.WhereExpressionBuilder<MessageTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Message.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Message.t;
}

class MessageRepository {
  const MessageRepository._();

  final attach = const MessageAttachRepository._();

  final attachRow = const MessageAttachRowRepository._();

  final detach = const MessageDetachRepository._();

  final detachRow = const MessageDetachRowRepository._();

  /// Returns a list of [Message]s matching the given query parameters.
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
  Future<List<Message>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MessageTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MessageTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MessageTable>? orderByList,
    _i1.Transaction? transaction,
    MessageInclude? include,
  }) async {
    return session.db.find<Message>(
      where: where?.call(Message.t),
      orderBy: orderBy?.call(Message.t),
      orderByList: orderByList?.call(Message.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Returns the first matching [Message] matching the given query parameters.
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
  Future<Message?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MessageTable>? where,
    int? offset,
    _i1.OrderByBuilder<MessageTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MessageTable>? orderByList,
    _i1.Transaction? transaction,
    MessageInclude? include,
  }) async {
    return session.db.findFirstRow<Message>(
      where: where?.call(Message.t),
      orderBy: orderBy?.call(Message.t),
      orderByList: orderByList?.call(Message.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Finds a single [Message] by its [id] or null if no such row exists.
  Future<Message?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    MessageInclude? include,
  }) async {
    return session.db.findById<Message>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  /// Inserts all [Message]s in the list and returns the inserted rows.
  ///
  /// The returned [Message]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Message>> insert(
    _i1.Session session,
    List<Message> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Message>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Message] and returns the inserted row.
  ///
  /// The returned [Message] will have its `id` field set.
  Future<Message> insertRow(
    _i1.Session session,
    Message row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Message>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Message]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Message>> update(
    _i1.Session session,
    List<Message> rows, {
    _i1.ColumnSelections<MessageTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Message>(
      rows,
      columns: columns?.call(Message.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Message]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Message> updateRow(
    _i1.Session session,
    Message row, {
    _i1.ColumnSelections<MessageTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Message>(
      row,
      columns: columns?.call(Message.t),
      transaction: transaction,
    );
  }

  /// Deletes all [Message]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Message>> delete(
    _i1.Session session,
    List<Message> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Message>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Message].
  Future<Message> deleteRow(
    _i1.Session session,
    Message row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Message>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Message>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<MessageTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Message>(
      where: where(Message.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MessageTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Message>(
      where: where?.call(Message.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class MessageAttachRepository {
  const MessageAttachRepository._();

  /// Creates a relation between this [Message] and the given [Attachment]s
  /// by setting each [Attachment]'s foreign key `_messageAttachmentsMessageId` to refer to this [Message].
  Future<void> attachments(
    _i1.Session session,
    Message message,
    List<_i3.Attachment> attachment, {
    _i1.Transaction? transaction,
  }) async {
    if (attachment.any((e) => e.id == null)) {
      throw ArgumentError.notNull('attachment.id');
    }
    if (message.id == null) {
      throw ArgumentError.notNull('message.id');
    }

    var $attachment = attachment
        .map((e) => _i3.AttachmentImplicit(
              e,
              $_messageAttachmentsMessageId: message.id,
            ))
        .toList();
    await session.db.update<_i3.Attachment>(
      $attachment,
      columns: [_i3.Attachment.t.$_messageAttachmentsMessageId],
      transaction: transaction,
    );
  }
}

class MessageAttachRowRepository {
  const MessageAttachRowRepository._();

  /// Creates a relation between the given [Message] and [Friend]
  /// by setting the [Message]'s foreign key `friendId` to refer to the [Friend].
  Future<void> friend(
    _i1.Session session,
    Message message,
    _i2.Friend friend, {
    _i1.Transaction? transaction,
  }) async {
    if (message.id == null) {
      throw ArgumentError.notNull('message.id');
    }
    if (friend.id == null) {
      throw ArgumentError.notNull('friend.id');
    }

    var $message = message.copyWith(friendId: friend.id);
    await session.db.updateRow<Message>(
      $message,
      columns: [Message.t.friendId],
      transaction: transaction,
    );
  }

  /// Creates a relation between this [Message] and the given [Attachment]
  /// by setting the [Attachment]'s foreign key `_messageAttachmentsMessageId` to refer to this [Message].
  Future<void> attachments(
    _i1.Session session,
    Message message,
    _i3.Attachment attachment, {
    _i1.Transaction? transaction,
  }) async {
    if (attachment.id == null) {
      throw ArgumentError.notNull('attachment.id');
    }
    if (message.id == null) {
      throw ArgumentError.notNull('message.id');
    }

    var $attachment = _i3.AttachmentImplicit(
      attachment,
      $_messageAttachmentsMessageId: message.id,
    );
    await session.db.updateRow<_i3.Attachment>(
      $attachment,
      columns: [_i3.Attachment.t.$_messageAttachmentsMessageId],
      transaction: transaction,
    );
  }
}

class MessageDetachRepository {
  const MessageDetachRepository._();

  /// Detaches the relation between this [Message] and the given [Attachment]
  /// by setting the [Attachment]'s foreign key `_messageAttachmentsMessageId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> attachments(
    _i1.Session session,
    List<_i3.Attachment> attachment, {
    _i1.Transaction? transaction,
  }) async {
    if (attachment.any((e) => e.id == null)) {
      throw ArgumentError.notNull('attachment.id');
    }

    var $attachment = attachment
        .map((e) => _i3.AttachmentImplicit(
              e,
              $_messageAttachmentsMessageId: null,
            ))
        .toList();
    await session.db.update<_i3.Attachment>(
      $attachment,
      columns: [_i3.Attachment.t.$_messageAttachmentsMessageId],
      transaction: transaction,
    );
  }
}

class MessageDetachRowRepository {
  const MessageDetachRowRepository._();

  /// Detaches the relation between this [Message] and the given [Attachment]
  /// by setting the [Attachment]'s foreign key `_messageAttachmentsMessageId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> attachments(
    _i1.Session session,
    _i3.Attachment attachment, {
    _i1.Transaction? transaction,
  }) async {
    if (attachment.id == null) {
      throw ArgumentError.notNull('attachment.id');
    }

    var $attachment = _i3.AttachmentImplicit(
      attachment,
      $_messageAttachmentsMessageId: null,
    );
    await session.db.updateRow<_i3.Attachment>(
      $attachment,
      columns: [_i3.Attachment.t.$_messageAttachmentsMessageId],
      transaction: transaction,
    );
  }
}
