import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:flutter_boilerplate/core/styles/app_color.dart';
import 'package:flutter_boilerplate/core/styles/app_font.dart';
import 'package:flutter_boilerplate/core/utils/extensions/widget_extension.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';

class BleOffPage extends StatelessWidget {
  const BleOffPage({super.key, this.adapterState});

  final BluetoothAdapterState? adapterState;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(MingCute.left_line),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            MingCute.bluetooth_line,
            size: 150,
          ),
          const SizedBox(height: 50),
          // if (Platform.isAndroid)
          FilledButton(
            onPressed: () async {
              try {
                await FlutterBluePlus.turnOn();
                if (context.mounted) context.go('/bleScan');
              } catch (e) {
                print(e);
              }
            },
            style: FilledButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              backgroundColor: AppColor.kWhite,
              elevation: 0,
              side: BorderSide(color: AppColor.kBlack),
              overlayColor: Colors.transparent,
              padding: const EdgeInsets.all(15),
            ),
            child: AppFont.h3('Turn on Bluetooth', textColor: AppColor.kBlack),
          ).center(),
          // if (Platform.isIOS) AppFont.h3('Please turn on Bluetooth'),
          const SizedBox(height: 100),
        ],
      ).center(),
    );
  }
}
