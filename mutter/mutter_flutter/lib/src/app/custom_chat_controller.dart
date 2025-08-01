import 'dart:async';
import 'dart:convert';

import 'package:flutter_chat_core/flutter_chat_core.dart';
import 'package:mutter_flutter/src/serverpod_client.dart';

class CustomChatController
    with UploadProgressMixin, ScrollToMessageMixin
    implements ChatController {
  final _operationsController = StreamController<ChatOperation>.broadcast();

  @override
  Future<void> insertMessage(Message message, {int? index}) async {
    print(sessionManager.signedInUser.toString());
    int insertIndex = -1;

    if (index == null) {
      insertIndex = await client.message.sendMessage(
        message.id,
        json.encode(message.toJson()),
      );

      if (insertIndex == -1) {
        return;
      }
    }

    _operationsController.add(ChatOperation.insert(message, index ?? insertIndex));
  }

  @override
  Future<void> removeMessage(Message message) async {
    return;
  }

  @override
  Future<void> updateMessage(Message oldMessage, Message newMessage) async {
    return;
  }

  @override
  Future<void> setMessages(List<Message> messages) async {
    _operationsController.add(ChatOperation.set(messages));
  }

  @override
  Future<void> insertAllMessages(List<Message> messages, {int? index}) async {
    return;
  }

  @override
  List<Message> get messages {
    return [];
  }

  @override
  Stream<ChatOperation> get operationsStream => _operationsController.stream;

  @override
  void dispose() {
    _operationsController.close();
    disposeUploadProgress();
    disposeScrollMethods();
  }
}

final chatController = CustomChatController();
