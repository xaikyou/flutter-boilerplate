import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:flutter_boilerplate/core/styles/app_font.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';

class BleScanPage extends StatefulWidget {
  const BleScanPage({super.key});

  @override
  State<BleScanPage> createState() => _BleScanPageState();
}

class _BleScanPageState extends State<BleScanPage> {
  List<BluetoothDevice> _systemDevices = [];
  List<ScanResult> _scanResults = [];
  bool _isScanning = false;
  late StreamSubscription<List<ScanResult>> _scanResultSubscription;
  late StreamSubscription<bool> _isScanningSubscription;

  @override
  void initState() {
    super.initState();

    _scanResultSubscription = FlutterBluePlus.scanResults.listen((results) {
      _scanResults = results;
      if (mounted) {
        setState(() {});
      }
    }, onError: (e) {});

    _isScanningSubscription = FlutterBluePlus.isScanning.listen((state) {
      _isScanning = state;
      if (mounted) {
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scanResultSubscription.cancel();
    _isScanningSubscription.cancel();
  }

  Future<void> onScanPressed() async {
    try {
      _systemDevices = await FlutterBluePlus.systemDevices;
    } catch (e) {
      print(e);
    }

    try {
      await FlutterBluePlus.startScan(timeout: const Duration(seconds: 15));
    } catch (e) {
      print(e);
    }

    if (mounted) {
      setState(() {});
    }
  }

  Future<void> onStopPressed() async {
    try {
      FlutterBluePlus.stopScan();
    } catch (e) {
      print(e);
    }
  }

  void onConnectPressed(BluetoothDevice device) {}

  Widget buildScanButton(BuildContext context) {
    if (FlutterBluePlus.isScanningNow) {
      return FloatingActionButton(
        onPressed: onStopPressed,
        backgroundColor: Colors.red,
        child: const Icon(Icons.stop),
      );
    } else {
      return FloatingActionButton(
        onPressed: onScanPressed,
        child: const Text("SCAN"),
      );
    }
  }

  List<Widget> _buildSystemDeviceTiles(BuildContext context) {
    return _systemDevices
        .map(
          (d) => ListTile(
            title: AppFont.h1(d.platformName),
          ),
        )
        .toList();
  }

  List<Widget> _buildScanResultTiles(BuildContext context) {
    return _scanResults
        .map(
          (r) => r.advertisementData.connectable &&
                  r.device.platformName.isNotEmpty
              ? ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: AppFont.h3(r.device.platformName),
                  leading: Text(r.rssi.toString()),
                  onTap: () => onConnectPressed(r.device),
                )
              : const SizedBox.shrink(),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppFont.h1('Scan Page'),
        leading: IconButton(
          onPressed: () => context.go('/home'),
          icon: const Icon(MingCute.left_line),
        ),
      ),
      floatingActionButton: buildScanButton(context),
      body: ListView(
        shrinkWrap: true,
        children: [
          // ..._buildSystemDeviceTiles(context),
          ..._buildScanResultTiles(context),
        ],
      ),
    );
  }
}
