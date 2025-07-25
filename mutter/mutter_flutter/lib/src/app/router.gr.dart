// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:mutter_flutter/src/screens/add_friend_screen.dart' as _i1;
import 'package:mutter_flutter/src/screens/chat_screen.dart' as _i2;
import 'package:mutter_flutter/src/screens/friends_list_screen.dart' as _i3;
import 'package:mutter_flutter/src/screens/sign_in_screen.dart' as _i4;

/// generated route for
/// [_i1.AddFriendScreen]
class AddFriendRoute extends _i5.PageRouteInfo<void> {
  const AddFriendRoute({List<_i5.PageRouteInfo>? children})
      : super(AddFriendRoute.name, initialChildren: children);

  static const String name = 'AddFriendRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i1.AddFriendScreen();
    },
  );
}

/// generated route for
/// [_i2.ChatScreen]
class ChatRoute extends _i5.PageRouteInfo<ChatRouteArgs> {
  ChatRoute({_i6.Key? key, String? userName, List<_i5.PageRouteInfo>? children})
      : super(
          ChatRoute.name,
          args: ChatRouteArgs(key: key, userName: userName),
          rawPathParams: {'username': userName},
          initialChildren: children,
        );

  static const String name = 'ChatRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<ChatRouteArgs>(
        orElse: () => ChatRouteArgs(userName: pathParams.optString('username')),
      );
      return _i2.ChatScreen(key: args.key, userName: args.userName);
    },
  );
}

class ChatRouteArgs {
  const ChatRouteArgs({this.key, this.userName});

  final _i6.Key? key;

  final String? userName;

  @override
  String toString() {
    return 'ChatRouteArgs{key: $key, userName: $userName}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ChatRouteArgs) return false;
    return key == other.key && userName == other.userName;
  }

  @override
  int get hashCode => key.hashCode ^ userName.hashCode;
}

/// generated route for
/// [_i3.FriendsListScreen]
class FriendsListRoute extends _i5.PageRouteInfo<void> {
  const FriendsListRoute({List<_i5.PageRouteInfo>? children})
      : super(FriendsListRoute.name, initialChildren: children);

  static const String name = 'FriendsListRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i3.FriendsListScreen();
    },
  );
}

/// generated route for
/// [_i4.SignInScreen]
class SignInRoute extends _i5.PageRouteInfo<void> {
  const SignInRoute({List<_i5.PageRouteInfo>? children})
      : super(SignInRoute.name, initialChildren: children);

  static const String name = 'SignInRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i4.SignInScreen();
    },
  );
}
