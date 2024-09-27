import 'package:aqua_pure/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:iconsax/iconsax.dart';

import '../../../common/QAppBar.dart';
import '../../../common/sideMenu.dart';
import 'Dashboard/Dashboard.dart';

class ManualControl extends StatefulWidget {
  const ManualControl({super.key});

  @override
  State<ManualControl> createState() => _ManualControlState();
}





class _ManualControlState extends State<ManualControl> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  bool isToggled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        drawer: sideMenu(),
        appBar: QAppBar(
          notificationIcon: Iconsax.notification,
          userIcon: Iconsax.user,
          title: 'Manual Control',
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
                        child: Text("Home / Manual Control"),
                      ),
                      SizedBox(height: 10),
                      QManualContainer(title: 'Feed Pump',),
                      SizedBox(height: 10),
                      QManualContainer(title: 'Feed Pump',),
                      SizedBox(height: 10),
                      QManualContainer(title: 'Feed Pump',),
                      SizedBox(height: 10),
                      QManualContainer(title: 'Feed Pump',),
                      SizedBox(height: 10),
                      QManualContainer(title: 'Feed Pump',),
                      SizedBox(height: 10),
                      QManualContainer(title: 'Feed Pump',),
                      SizedBox(height: 10),
                      QManualContainer(title: 'Feed Pump',),
                      SizedBox(height: 10),
                      QManualContainer(title: 'Feed Pump',),
                      SizedBox(height: 10),
                      QManualContainer(title: 'Feed Pump',),
                      SizedBox(height: 10),
                      QManualContainer(title: 'Feed Pump',),
                    ]
                )
            )
        )
    );
  }
}


class QManualContainer extends StatefulWidget {
  final String title;

  const QManualContainer({
    super.key,
    required this.title,
  });

  @override
  _QManualContainerState createState() => _QManualContainerState();
}

class _QManualContainerState extends State<QManualContainer> {
  bool isToggled = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
        color: Colors.blue.withOpacity(0.3), // Replace with your TColors.appBarColor
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          children: [
            Text(widget.title),
            Spacer(),
            FlutterSwitch(
              height: 25.0,
              width: 50.0,
              padding: 4.0,
              toggleSize: 18.0,
              borderRadius: 10.0,
              activeColor: Colors.green,
              inactiveColor: Colors.red,
              value: isToggled,
              onToggle: (value) {
                setState(() {
                  isToggled = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
