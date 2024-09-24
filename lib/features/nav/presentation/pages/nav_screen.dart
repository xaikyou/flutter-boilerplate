import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/core/constants/app_enums.dart';
import 'package:flutter_boilerplate/core/constants/app_icons.dart';
import 'package:flutter_boilerplate/features/history/history_page.dart';
import 'package:flutter_boilerplate/features/home/presentation/pages/home_page.dart';
import 'package:flutter_boilerplate/features/nav/presentation/bloc/nav_bloc.dart';
import 'package:flutter_boilerplate/features/nav/presentation/widgets/bottom_nav_bar_widget.dart';
import 'package:flutter_boilerplate/features/notification/notification_page.dart';
import 'package:flutter_boilerplate/features/profile/profile_page.dart';
import 'package:flutter_boilerplate/features/scanner/scanner_page.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  void onItemTapped(int pageIndex) {
    if (pageIndex == Pages.values.length ~/ 2) {
      return;
    }
    context
        .read<NavBloc>()
        .add(NavEvent.navItemPressed(page: Pages.values[pageIndex]));
  }

  final _pages = const [
    HomePage(),
    HistoryPage(),
    ScannerPage(),
    NotificationPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavBloc, NavState>(
      builder: (context, state) {
        return Scaffold(
          bottomNavigationBar: BottomNavBarWidget(
            selectedIndex: state.data.currentPage.index,
            icons: AppIcons.navIcons,
            selectedIcons: AppIcons.navSelectedIcons,
            onItemTapped: onItemTapped,
          ),
          body: _pages[state.data.currentPage.index],
        );
      },
    );
  }
}
