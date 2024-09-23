import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/core/utils/extensions/widget_extension.dart';

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({
    super.key,
    required this.icons,
    required this.selectedIndex,
    required this.onItemTapped,
    this.selectedIcons,
    this.labels,
    this.height = kBottomNavigationBarHeight,
    this.indicatorBorderRadius,
  });

  final int selectedIndex;
  final double height;
  final List<Widget> icons;
  final List<Widget>? selectedIcons;
  final List<String>? labels;
  final Function(int)? onItemTapped;
  final double? indicatorBorderRadius;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: selectedIndex,
      // height: height,
      onDestinationSelected: onItemTapped,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
      indicatorColor: Colors.transparent,
      indicatorShape: const CircleBorder(),
      destinations: List.generate(icons.length, (index) {
        if (index == icons.length ~/ 2) {
          return NavigationDestination(
            icon: Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(7),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 30, 30, 30),
                shape: BoxShape.circle,
                border: Border.all(
                  width: 5,
                  color: const Color.fromARGB(255, 139, 168, 178),
                  strokeAlign: BorderSide.strokeAlignOutside,
                ),
              ),
              child: icons[index],
            ),
            selectedIcon: selectedIcons?[index],
            label: labels?[index] ?? '',
          );
        }
        return NavigationDestination(
          icon: icons[index].paddingVerticle(17),
          selectedIcon: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              selectedIcons![index].paddingVerticle(17),
            ],
          ),
          label: labels?[index] ?? '',
        );
      }),
    );
  }
}
