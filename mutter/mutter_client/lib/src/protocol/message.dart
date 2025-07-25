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
import 'friend.dart' as _i2;
import 'attachment.dart' as _i3;

abstract class Message implements _i1.SerializableModel {
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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int friendId;

  _i2.Friend? friend;

  String text;

  List<_i3.Attachment>? attachments;

  DateTime dateSent;

  DateTime? dateReceived;

  DateTime? dateRead;

  bool failed;

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
