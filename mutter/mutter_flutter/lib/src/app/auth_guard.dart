import 'package:auto_route/auto_route.dart';
import 'package:mutter_flutter/src/app/router.gr.dart';
import 'package:mutter_flutter/src/serverpod_client.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (sessionManager.isSignedIn) {
      resolver.next(true);
    } else {
      resolver.redirectUntil(SignInRoute());
    }
  }
}
