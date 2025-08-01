/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Message implements _i1.SerializableModel {
  Message._({
    this.id,
    _i1.UuidValue? uuid,
    required this.content,
  }) : uuid = uuid ?? _i1.Uuid().v7obj();

  factory Message({
    int? id,
    _i1.UuidValue? uuid,
    required String content,
  }) = _MessageImpl;

  factory Message.fromJson(Map<String, dynamic> jsonSerialization) {
    return Message(
      id: jsonSerialization['id'] as int?,
      uuid: jsonSerialization['uuid'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['uuid']),
      content: jsonSerialization['content'] as String,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  _i1.UuidValue? uuid;

  String content;

  /// Returns a shallow copy of this [Message]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Message copyWith({
    int? id,
    _i1.UuidValue? uuid,
    String? content,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (uuid != null) 'uuid': uuid?.toJson(),
      'content': content,
    };
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
    _i1.UuidValue? uuid,
    required String content,
  }) : super._(
          id: id,
          uuid: uuid,
          content: content,
        );

  /// Returns a shallow copy of this [Message]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Message copyWith({
    Object? id = _Undefined,
    Object? uuid = _Undefined,
    String? content,
  }) {
    return Message(
      id: id is int? ? id : this.id,
      uuid: uuid is _i1.UuidValue? ? uuid : this.uuid,
      content: content ?? this.content,
    );
  }
}
