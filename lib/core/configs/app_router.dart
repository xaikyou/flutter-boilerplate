import 'package:flutter/widgets.dart';
import 'package:flutter_boilerplate/features/history/history_page.dart';
import 'package:flutter_boilerplate/features/home/presentation/pages/ble_off_page.dart';
import 'package:flutter_boilerplate/features/home/presentation/pages/ble_scan_page.dart';
import 'package:flutter_boilerplate/features/home/presentation/pages/home_page.dart';
import 'package:flutter_boilerplate/features/nav/presentation/pages/nav_screen.dart';
import 'package:flutter_boilerplate/features/notification/notification_page.dart';
import 'package:flutter_boilerplate/features/profile/profile_page.dart';
import 'package:flutter_boilerplate/features/scanner/scanner_page.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  AppRouter._();

  static final _router = GoRouter(
    initialLocation: '/home',
    navigatorKey: GlobalKey<NavigatorState>(),
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/bleScan',
        builder: (context, state) => const BleScanPage(),
      ),
      GoRoute(
        path: '/bleOff',
        builder: (context, state) => const BleOffPage(),
      ),
      ShellRoute(
        navigatorKey: GlobalKey<NavigatorState>(),
        pageBuilder: (context, state, child) {
          return NoTransitionPage(child: NavScreen(child: child));
        },
        routes: [
          GoRoute(
            path: '/home',
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: HomePage()),
          ),
          GoRoute(
            path: '/history',
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: HistoryPage()),
          ),
          GoRoute(
            path: '/scanner',
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: ScannerPage()),
          ),
          GoRoute(
            path: '/notification',
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: NotificationPage()),
          ),
          GoRoute(
            path: '/profile',
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: ProfilePage()),
          ),
        ],
      ),
    ],
  );
  static GoRouter get router => _router;
}
