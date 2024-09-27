import 'package:aqua_pure/features/presentations/screens/Dashboard/Dashboard.dart';
import 'package:aqua_pure/features/presentations/screens/Dashboard/Dashboard_mobile.dart';
import 'package:aqua_pure/features/presentations/screens/main_interface.dart';
import 'package:aqua_pure/features/presentations/screens/manual_control.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import '../features/presentations/screens/Data_analysis.dart';
import '../features/presentations/screens/General_purpose.dart';
import '../features/presentations/screens/Purify_manager.dart';
import '../features/presentations/screens/RealData.dart';
import '../utils/constants/colors.dart';



class sideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: Border.all(),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: TColors.textWhite,
            ),
            child: Image.asset("assets/Branding.png"),

          ),
          ListTile(
            leading: Icon(Iconsax.home),
            title: Text('Dashboard'),
            onTap: () {
              Get.to(() => DashBoardMobile());
            },
          ),
          ListTile(
            leading: Icon(Iconsax.main_component),
            title: Text('Main Interface'),
            onTap: () {
              Get.to(() => MainInterfaceScreen());
            },
          ),
          ListTile(
            leading: Icon(Iconsax.direct),
            title: Text('Purifier Manager'),
            onTap: () {
              Get.to(() => PurifierManager());
            },
          ),
          ListTile(
            leading: Icon(Iconsax.menu_board),
            title: Text('Data and Tables'),
            onTap: () {
              Get.to(() => DataAnalysis());
            },
          ),
          ListTile(
            leading: Icon(Iconsax.timer_1),
            title: Text('Real Time Data'),
            onTap: () {
              Get.to(() => RealTimeData());
            },
          ),
          ListTile(
            leading: Icon(Iconsax.add),
            title: Text('Manual Control'),
            onTap: () {
              Get.to(() => ManualControl());
            },
          ),
          ListTile(
            leading: Icon(Iconsax.setting),
            title: Text('Settings'),
            onTap: () {
              Get.to(() => GeneralPurpose());
            },
          ),
          ListTile(
            leading: Icon(Iconsax.add),
            title: Text('Alarm History'),
            onTap: () {

            },
          ),
          ListTile(
            leading: Icon(Iconsax.menu_board),
            title: Text('Contact'),
            onTap: () {
              Navigator.pop(context);
            },
          ),

        ],
      ),
    );
  }
}
