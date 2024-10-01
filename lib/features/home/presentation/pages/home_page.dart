import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:flutter_boilerplate/core/styles/app_color.dart';
import 'package:flutter_boilerplate/core/styles/app_font.dart';
import 'package:flutter_boilerplate/core/utils/extensions/widget_extension.dart';
import 'package:flutter_boilerplate/features/home/presentation/widgets/custom_fab_widget.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  BluetoothAdapterState _adapterState = BluetoothAdapterState.unknown;

  late StreamSubscription<BluetoothAdapterState> _adapterStateStateSubscription;

  @override
  void initState() {
    super.initState();
    _adapterStateStateSubscription =
        FlutterBluePlus.adapterState.listen((state) {
      _adapterState = state;
      if (mounted) {
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    _adapterStateStateSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String screen =
        _adapterState == BluetoothAdapterState.on ? '/bleScan' : '/permission';

    return Scaffold(
      appBar: AppBar(
        title: AppFont.h1('Dashboard', isBold: true),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            MingCute.user_1_line,
            size: 40,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              MingCute.scan_line,
              size: 40,
            ),
          ),
        ],
      ),
      floatingActionButton: CustomFabWidget(
        icon: const Icon(MingCute.add_fill),
        label: 'Add device',
        isExtended: true,
        onPressed: () =>
            context.push('$screen?title=huy bung bu&description=hahahaha'),
      ),
      body: Column(
        children: [
          _buildHomeConnectedDevice().paddingHorizontal(15),
          _buildFeatureCategories().paddingVerticle(5),
          _buildFeature(),
        ],
      ),
    );
  }

  Widget _buildHomeConnectedDevice() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppFont.h2(
          'Connected device',
          isBold: true,
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: AppColor.kWhite,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: AppColor.kBlack),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppFont.h3('PETROCLOUD MASTER BLE'),
              Row(
                children: [
                  AppFont.h3('Status: '),
                  AppFont.h3('Strong', textColor: AppColor.kGreen),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildFeatureCategories() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppFont.h2(
          'Features',
          isBold: true,
        ).paddingHorizontal(15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (int i = 0; i < 10; i++)
                if (i == 0)
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(),
                          borderRadius: BorderRadius.circular(5)),
                      child: AppFont.h3('Feature $i').paddingAll(5),
                    ),
                  )
                else if (i == 9)
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(),
                          borderRadius: BorderRadius.circular(5)),
                      child: AppFont.h3('Feature $i').paddingAll(5),
                    ),
                  )
                else
                  Card(
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(),
                        borderRadius: BorderRadius.circular(5)),
                    child: AppFont.h3('Feature $i').paddingAll(5),
                  ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildFeature() {
    return Expanded(
      child: Material(
        color: Colors.transparent,
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              tileColor: AppColor.kWhite,
              title: AppFont.h3('Sub Feature $index'),
              shape: RoundedRectangleBorder(
                  side: const BorderSide(),
                  borderRadius: BorderRadius.circular(5)),
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
              const SizedBox(height: 10),
        ),
      ).paddingHorizontal(15),
    );
  }
}
