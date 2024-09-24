import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:flutter_boilerplate/core/utils/extensions/widget_extension.dart';
import 'package:icons_plus/icons_plus.dart';

class BleOffPage extends StatelessWidget {
  const BleOffPage({super.key, this.adapterState});

  final BluetoothAdapterState? adapterState;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(MingCute.left_line),
        ),
      ),
      body: const Text('Ble Off Page').center(),
    );
  }
}
