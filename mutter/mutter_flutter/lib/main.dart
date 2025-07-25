import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mutter_client/mutter_client.dart';
import 'package:mutter_flutter/src/app/router.dart';
import 'package:mutter_flutter/src/app/router.gr.dart';
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
        _appRouter.replace(FriendsListRoute());
      } else {
        _appRouter.replace(SignInRoute());
      }
    };
    sessionManager.addListener(_listener);
  }

  @override
  void dispose() {
    super.dispose();
    sessionManager.removeListener(_listener);
  }

  @override
  Widget build(BuildContext context) {
    /*
    return MaterialApp(
      title: 'Mutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: null,
    );
    */
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
