/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'dart:typed_data' as _i2;

abstract class Attachment
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Attachment._({
    this.id,
    required this.name,
    required this.type,
    required this.content,
  }) : _messageAttachmentsMessageId = null;

  factory Attachment({
    int? id,
    required String name,
    required String type,
    required _i2.ByteData content,
  }) = _AttachmentImpl;

  factory Attachment.fromJson(Map<String, dynamic> jsonSerialization) {
    return AttachmentImplicit._(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      type: jsonSerialization['type'] as String,
      content: _i1.ByteDataJsonExtension.fromJson(jsonSerialization['content']),
      $_messageAttachmentsMessageId:
          jsonSerialization['_messageAttachmentsMessageId'] as int?,
    );
  }

  static final t = AttachmentTable();

  static const db = AttachmentRepository._();

  @override
  int? id;

  String name;

  String type;

  _i2.ByteData content;

  final int? _messageAttachmentsMessageId;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Attachment]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Attachment copyWith({
    int? id,
    String? name,
    String? type,
    _i2.ByteData? content,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'type': type,
      'content': content.toJson(),
      if (_messageAttachmentsMessageId != null)
        '_messageAttachmentsMessageId': _messageAttachmentsMessageId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'type': type,
      'content': content.toJson(),
    };
  }

  static AttachmentInclude include() {
    return AttachmentInclude._();
  }

  static AttachmentIncludeList includeList({
    _i1.WhereExpressionBuilder<AttachmentTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AttachmentTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AttachmentTable>? orderByList,
    AttachmentInclude? include,
  }) {
    return AttachmentIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Attachment.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Attachment.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _AttachmentImpl extends Attachment {
  _AttachmentImpl({
    int? id,
    required String name,
    required String type,
    required _i2.ByteData content,
  }) : super._(
          id: id,
          name: name,
          type: type,
          content: content,
        );

  /// Returns a shallow copy of this [Attachment]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Attachment copyWith({
    Object? id = _Undefined,
    String? name,
    String? type,
    _i2.ByteData? content,
  }) {
    return AttachmentImplicit._(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      type: type ?? this.type,
      content: content ?? this.content.clone(),
      $_messageAttachmentsMessageId: this._messageAttachmentsMessageId,
    );
  }
}

class AttachmentImplicit extends _AttachmentImpl {
  AttachmentImplicit._({
    int? id,
    required String name,
    required String type,
    required _i2.ByteData content,
    int? $_messageAttachmentsMessageId,
  })  : _messageAttachmentsMessageId = $_messageAttachmentsMessageId,
        super(
          id: id,
          name: name,
          type: type,
          content: content,
        );

  factory AttachmentImplicit(
    Attachment attachment, {
    int? $_messageAttachmentsMessageId,
  }) {
    return AttachmentImplicit._(
      id: attachment.id,
      name: attachment.name,
      type: attachment.type,
      content: attachment.content,
      $_messageAttachmentsMessageId: $_messageAttachmentsMessageId,
    );
  }

  @override
  final int? _messageAttachmentsMessageId;
}

class AttachmentTable extends _i1.Table<int?> {
  AttachmentTable({super.tableRelation}) : super(tableName: 'attachment') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    type = _i1.ColumnString(
      'type',
      this,
    );
    content = _i1.ColumnByteData(
      'content',
      this,
    );
    $_messageAttachmentsMessageId = _i1.ColumnInt(
      '_messageAttachmentsMessageId',
      this,
    );
  }

  late final _i1.ColumnString name;

  late final _i1.ColumnString type;

  late final _i1.ColumnByteData content;

  late final _i1.ColumnInt $_messageAttachmentsMessageId;

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        type,
        content,
        $_messageAttachmentsMessageId,
      ];

  @override
  List<_i1.Column> get managedColumns => [
        id,
        name,
        type,
        content,
      ];
}

class AttachmentInclude extends _i1.IncludeObject {
  AttachmentInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Attachment.t;
}

class AttachmentIncludeList extends _i1.IncludeList {
  AttachmentIncludeList._({
    _i1.WhereExpressionBuilder<AttachmentTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Attachment.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Attachment.t;
}

class AttachmentRepository {
  const AttachmentRepository._();

  /// Returns a list of [Attachment]s matching the given query parameters.
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
  Future<List<Attachment>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<AttachmentTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AttachmentTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AttachmentTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Attachment>(
      where: where?.call(Attachment.t),
      orderBy: orderBy?.call(Attachment.t),
      orderByList: orderByList?.call(Attachment.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [Attachment] matching the given query parameters.
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
  Future<Attachment?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<AttachmentTable>? where,
    int? offset,
    _i1.OrderByBuilder<AttachmentTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AttachmentTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Attachment>(
      where: where?.call(Attachment.t),
      orderBy: orderBy?.call(Attachment.t),
      orderByList: orderByList?.call(Attachment.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [Attachment] by its [id] or null if no such row exists.
  Future<Attachment?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Attachment>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [Attachment]s in the list and returns the inserted rows.
  ///
  /// The returned [Attachment]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Attachment>> insert(
    _i1.Session session,
    List<Attachment> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Attachment>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Attachment] and returns the inserted row.
  ///
  /// The returned [Attachment] will have its `id` field set.
  Future<Attachment> insertRow(
    _i1.Session session,
    Attachment row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Attachment>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Attachment]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Attachment>> update(
    _i1.Session session,
    List<Attachment> rows, {
    _i1.ColumnSelections<AttachmentTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Attachment>(
      rows,
      columns: columns?.call(Attachment.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Attachment]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Attachment> updateRow(
    _i1.Session session,
    Attachment row, {
    _i1.ColumnSelections<AttachmentTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Attachment>(
      row,
      columns: columns?.call(Attachment.t),
      transaction: transaction,
    );
  }

  /// Deletes all [Attachment]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Attachment>> delete(
    _i1.Session session,
    List<Attachment> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Attachment>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Attachment].
  Future<Attachment> deleteRow(
    _i1.Session session,
    Attachment row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Attachment>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Attachment>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<AttachmentTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Attachment>(
      where: where(Attachment.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<AttachmentTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Attachment>(
      where: where?.call(Attachment.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
