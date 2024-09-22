import 'package:flutter/widgets.dart';
import 'package:flutter_boilerplate/features/feature1/presentation/pages/feature1_page.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  AppRouter._();
  
  static final _router = GoRouter(
    initialLocation: '/feature1',
    navigatorKey: GlobalKey<NavigatorState>(),
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/feature1',
        builder: (context, state) => const Feature1Page(),
      ),
      // ShellRoute(
      //   navigatorKey: GlobalKey<NavigatorState>(),
      //   routes: const [],
      // ),
    ],
  );
  static GoRouter get router => _router;
}
