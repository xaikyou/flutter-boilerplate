import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/core/styles/app_font.dart';
import 'package:flutter_boilerplate/core/utils/extensions/context_extension.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      animationDuration: Duration.zero,
      child: Scaffold(
        appBar: AppBar(
          title: AppFont.h1(
            context.loc.notification,
            isBold: true,
          ),
          bottom: TabBar(
            tabs: [
              Tab(
                child: AppFont.h2('Unread'),
              ),
              Tab(
                child: AppFont.h2('Read'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
