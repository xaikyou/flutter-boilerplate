import 'package:flutter/widgets.dart';
import 'package:flutter_boilerplate/features/home/presentation/pages/ble_off_page.dart';
import 'package:flutter_boilerplate/features/home/presentation/pages/ble_scan_page.dart';
import 'package:flutter_boilerplate/features/nav/presentation/pages/nav_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  AppRouter._();

  static final _router = GoRouter(
    initialLocation: '/nav',
    navigatorKey: GlobalKey<NavigatorState>(),
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/nav',
        builder: (context, state) => const NavScreen(),
      ),
      GoRoute(
        path: '/scan',
        builder: (context, state) => const BleScanPage(),
      ),
      GoRoute(
        path: '/bleOff',
        builder: (context, state) => const BleOffPage(),
      ),
      // ShellRoute(
      //   navigatorKey: GlobalKey<NavigatorState>(),
      //   routes: const [],
      // ),
    ],
  );
  static GoRouter get router => _router;
}
