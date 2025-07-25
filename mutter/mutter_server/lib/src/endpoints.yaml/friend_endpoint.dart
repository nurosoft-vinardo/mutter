import 'package:mutter_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/serverpod_auth_server.dart';

class FriendEndpoint extends Endpoint {
  @override
  bool get requireLogin => true;

  Future<List<UserInfoPublic>> getFriends(Session session) async {
    final userId = (await session.authenticated)?.userIdentifier;
    final friends = await Friend.db.find(session, where: (t) => t.sender.userIdentifier.equals(userId));

    return friends.map((friend) => friend.recipient!.toPublic()).toList();
  }

  Future<UserInfoPublic?> addFriend(Session session, String userName) async {
    final users = await UserInfo.db.find(session, where: (t) => t.userName.equals(userName));

    if (users.isEmpty) {
      return null;
    }

    return users[0].toPublic();
  }
}
