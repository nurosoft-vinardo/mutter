import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_chat_core/flutter_chat_core.dart' as chat;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mutter_client/mutter_client.dart';
import 'package:mutter_flutter/src/app/custom_chat_controller.dart';
import 'package:mutter_flutter/src/app/router.dart';
import 'package:mutter_flutter/src/app/session.dart';
import 'package:mutter_flutter/src/serverpod_client.dart';

/// Sets up a global client object that can be used to talk to the server from
/// anywhere in our app. The client is generated from your server code
/// and is set up to connect to a Serverpod running on a local server on
/// the default port. You will need to modify this to connect to staging or
/// production servers.
/// In a larger app, you may want to use the dependency injection of your choice instead of
/// using a global client object. This is just a simple example.



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeServerpodClient();

  runApp(ProviderScope(child: App()));
}

class App extends ConsumerStatefulWidget {
  const App({super.key});

  @override
  AppState createState() => AppState();
}

class AppState extends ConsumerState<App> {
  late final _appRouter = AppRouter();
  late final VoidCallback _listener;

  @override
  void initState() {
    super.initState();
    final session = ref.read(sessionProvider.notifier);
    _listener = () {
      session.setUser(sessionManager.signedInUser);

      if (sessionManager.isSignedIn) {
        _appRouter.replacePath('/');
      } else {
        _appRouter.replacePath('/sign_in');
      }
    };
    sessionManager.addListener(_listener);
    _listenToUpdates();
  }

  @override
  void dispose() {
    sessionManager.removeListener(_listener);
    chatController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(sessionProvider);
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }

  Future<void> _listenToUpdates() async {
    while (true) {
      try {
        final messageUpdates = client.message.messageUpdates();

        await for (final message in messageUpdates) {
          chatController.insertMessage(chat.Message.fromJson(jsonDecode(message.content)), index: message.id!);
        }
      } on MethodStreamException catch (_) {
        chatController.setMessages([]);
      }

      await Future.delayed(Duration(seconds: 5));
    }
  }
}
