import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../common/QAppBar.dart';
import '../../../common/QContainerData.dart';
import '../../../common/sideMenu.dart';
import 'Dashboard/Dashboard.dart';

class RealTimeData extends StatefulWidget {
  const RealTimeData({super.key});

  @override
  State<RealTimeData> createState() => _RealTimeDataState();
}

class _RealTimeDataState extends State<RealTimeData> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: sideMenu(),
      appBar: QAppBar(
        notificationIcon: Iconsax.notification,
        userIcon: Iconsax.user,
        title: 'Real Time Data',
        menuIcon: Iconsax.menu_1,
        onPressed: () {
          _scaffoldKey.currentState?.openDrawer();
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text("Home / Data and Table"),
              ),
              SizedBox(height: 10.0),
              QDataContainer(
                title1: 'Pressure Readings',
                title2: 'Temp Readings',
                title3: 'Flow Rates',
                title4: 'Conductivity',
                heading: 'Detailed Metrics',
              ),
              SizedBox(height: 10.0),
              QDataContainer(
                title1: 'Pressure Readings',
                title2: 'Temp Readings',
                title3: 'Flow Rates',
                title4: 'Conductivity',
                heading: 'Quality Metrics',
              ),
              SizedBox(height: 10.0),
              QDataContainer(
                title1: 'Pressure Readings',
                title2: 'Temp Readings',
                title3: 'Flow Rates',
                title4: 'Conductivity',
                heading: 'Component Status',
              ),
              SizedBox(height: 10.0),
              QDataContainer(
                title1: 'Pressure Readings',
                title2: 'Temp Readings',
                title3: 'Flow Rates',
                title4: 'Conductivity',
                heading: 'Alarms & Warnings',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

