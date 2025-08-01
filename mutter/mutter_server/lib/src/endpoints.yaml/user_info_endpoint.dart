import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/serverpod_auth_server.dart';

class UserInfoEndpoint extends Endpoint {
  @override
  bool get requireLogin => true;

  Future<List<UserInfoPublic>> getUsers(Session session) async {
    final users = await UserInfo.db.find(session, where: (t) => Expression(true));
    return users.map((user) => user.toPublic()).toList();
  }
}
