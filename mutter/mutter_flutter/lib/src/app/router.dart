import 'package:auto_route/auto_route.dart';
import 'package:mutter_flutter/src/app/auth_guard.dart';
import 'package:mutter_flutter/src/app/router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends RootStackRouter {
  final authGuard = AuthGuard();

  @override
  RouteType get defaultRouteType => RouteType.material(); //.cupertino, .adaptive ..etc

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: ChatRoute.page, path: '/', guards: [authGuard]),
    AutoRoute(page: SignInRoute.page, path: '/sign_in'),
  ];

  @override
  List<AutoRouteGuard> get guards => [
    // optionally add root guards here
  ];
}
