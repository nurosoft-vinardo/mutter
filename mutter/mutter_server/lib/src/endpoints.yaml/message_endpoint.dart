import 'package:mutter_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class MessageEndpoint extends Endpoint {
  static const _channelMessagesUpdated = 'messages-updated';

  @override
  bool get requireLogin => true;

  Future<int> sendMessage(Session session, String messageId, String message) async {
    final uuid = UuidValue.fromString(messageId);

    if (await Message.db.findFirstRow(session, where: (t) => t.uuid.equals(uuid)) != null) {
      return -1;
    }

    final insertedMessage = await Message.db.insertRow(session, Message(uuid: uuid, content: message));
    session.messages.postMessage(_channelMessagesUpdated, insertedMessage);

    return insertedMessage.id!;
  }

  Stream<Message> messageUpdates(Session session) async* {
    final updateStream = session.messages.createStream<Message>(_channelMessagesUpdated);

    for (final message in await Message.db.find(session)) {
      yield message;
    }

    await for (var message in updateStream) {
      yield message;
    }
  }
}
