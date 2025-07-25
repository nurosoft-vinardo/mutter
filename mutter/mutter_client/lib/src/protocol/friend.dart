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
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i2;

abstract class Friend implements _i1.SerializableModel {
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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int senderId;

  _i2.UserInfo? sender;

  int recipientId;

  _i2.UserInfo? recipient;

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
