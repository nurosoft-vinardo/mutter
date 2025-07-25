import 'package:mutter_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/serverpod_auth_server.dart';

class MessageEndpoint extends Endpoint {
  @override
  bool get requireLogin => true;
}
