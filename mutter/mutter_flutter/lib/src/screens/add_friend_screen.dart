import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mutter_flutter/src/app/friends.dart';
import 'package:mutter_flutter/src/serverpod_client.dart';

@RoutePage()
class AddFriendScreen extends ConsumerStatefulWidget {
  const AddFriendScreen({super.key});

  @override
  AddFriendState createState() => AddFriendState();
}

class AddFriendState extends ConsumerState<AddFriendScreen> {
  String _userName = '';
  String? _error;

  @override
  Widget build(BuildContext context) {
    final friends = ref.watch(friendsProvider);

    return Center(
      child: Column(
        children: [
          TextField(
            onChanged: (value) {
              setState(() {
                _userName = value;
              });
            },
            decoration: InputDecoration(
              hintText: 'Username',
              errorText: _error,
            ),
          ),
          TextButton(
            onPressed: !friends.isLoading ? () async {
              final user = await client.friend.addFriend(_userName);

              if (user == null) {
                setState(() {
                  _error = 'User not found';
                });
                return;
              }

              if (friends.value!.any((friend) => friend.userName == user.userName)) {
                setState(() {
                  _error = 'User already added';
                });
                return;
              }
            } : null,
            child: Text('Add'),
          ),
        ],
      ),
    );
  }
}
