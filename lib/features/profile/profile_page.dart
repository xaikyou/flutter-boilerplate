import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/core/styles/app_font.dart';
import 'package:flutter_boilerplate/core/utils/extensions/context_extension.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppFont.h1(
          context.loc.profile,
          isBold: true,
        ),
      ),
      body: ListView(
        children: [
          Card(
            child: Column(
              children: [
                ListTile(
                  title: AppFont.h3('Setting 1'),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_rounded,
                  ),
                  onTap: () {},
                ),
                const Divider(),
                ListTile(
                  title: AppFont.h3('Setting 2'),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_rounded,
                  ),
                  onTap: () {},
                ),
                const Divider(),
                ListTile(
                  title: AppFont.h3('Setting 3'),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_rounded,
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
