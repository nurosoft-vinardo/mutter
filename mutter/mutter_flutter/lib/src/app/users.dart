import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mutter_flutter/src/app/session.dart';
import 'package:mutter_flutter/src/serverpod_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:serverpod_auth_client/serverpod_auth_client.dart';

part 'users.g.dart';

@riverpod
Future<List<UserInfoPublic>> users(Ref ref) async {
  ref.watch(sessionProvider);
  return client.userInfo.getUsers();
}
