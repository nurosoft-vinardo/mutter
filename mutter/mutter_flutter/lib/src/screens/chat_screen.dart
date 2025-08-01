import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_core/flutter_chat_core.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mutter_flutter/src/app/custom_chat_controller.dart';
import 'package:mutter_flutter/src/app/session.dart';
import 'package:uuid/uuid.dart';

@RoutePage()
class ChatScreen extends ConsumerWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session = ref.watch(sessionProvider);

    if (session == null) {
      return Center(
        child: Text('Not signed in.'),
      );
    }

    return Scaffold(
      body: Chat(
        chatController: chatController,
        currentUserId: session.userName!,
        onMessageSend: (text) {
          chatController.insertMessage(
            TextMessage(
              id: Uuid().v7(),
              authorId: session.userName!,
              createdAt: DateTime.now().toUtc(),
              text: text,
            ),
          );
        },
        resolveUser: (UserID id) async {
          return User(id: id);
        },
      ),
    );
  }
}
