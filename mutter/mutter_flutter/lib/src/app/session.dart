import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:serverpod_auth_client/serverpod_auth_client.dart';

part 'session.g.dart';

@riverpod
class Session extends _$Session {
  @override
  UserInfo? build() {
    return null;
  }

  void setUser(UserInfo? user) {
    state = user;
  }
}
