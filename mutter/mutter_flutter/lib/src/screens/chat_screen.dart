import 'dart:math';

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_core/flutter_chat_core.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mutter_flutter/src/app/session.dart';
import 'package:mutter_flutter/src/serverpod_client.dart';
import 'package:uuid/uuid.dart';

@RoutePage()
class ChatScreen extends ConsumerStatefulWidget {
  const ChatScreen({super.key, @PathParam('username') this.userName});

  final String? userName;

  @override
  ChatState createState() => ChatState();
}

class ChatState extends ConsumerState<ChatScreen> {
  final _chatController = InMemoryChatController();
  final _uuid = Uuid();

  @override
  void dispose() {
    _chatController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final session = ref.watch(sessionProvider);

    if (session == null) {
      return Center(
        child: Text('Not signed in.'),
      );
    }

    if (widget.userName == null) {
      return Center(
        child: Text('No user specified.'),
      );
    }

    return Scaffold(
      body: Chat(
        chatController: _chatController,
        currentUserId: widget.userName!,
        onMessageSend: (text) {
          _chatController.insertMessage(
            TextMessage(
              // Better to use UUID or similar for the ID - IDs must be unique.
              id: _uuid.v1(),
              authorId: session.userName!,
              createdAt: DateTime.now().toUtc(),
              text: text,
            ),
          );
        },
        resolveUser: (UserID id) async {
          return User(id: id, name: 'Test');
        },
      ),
    );
  }
}
