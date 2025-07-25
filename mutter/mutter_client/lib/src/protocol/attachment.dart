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
import 'dart:typed_data' as _i2;

abstract class Attachment implements _i1.SerializableModel {
  Attachment._({
    this.id,
    required this.name,
    required this.type,
    required this.content,
  });

  factory Attachment({
    int? id,
    required String name,
    required String type,
    required _i2.ByteData content,
  }) = _AttachmentImpl;

  factory Attachment.fromJson(Map<String, dynamic> jsonSerialization) {
    return Attachment(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      type: jsonSerialization['type'] as String,
      content: _i1.ByteDataJsonExtension.fromJson(jsonSerialization['content']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  String type;

  _i2.ByteData content;

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
    };
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
    return Attachment(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      type: type ?? this.type,
      content: content ?? this.content.clone(),
    );
  }
}
