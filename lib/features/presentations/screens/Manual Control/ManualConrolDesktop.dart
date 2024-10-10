import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/QAppBar.dart';
import '../../../../common/sideMenu.dart';
import '../../../../utils/constants/colors.dart';

class ManualControlDesktop extends StatefulWidget {
  const ManualControlDesktop({super.key});

  @override
  State<ManualControlDesktop> createState() => _ManualControlDesktopState();
}

class _ManualControlDesktopState extends State<ManualControlDesktop> {
  bool isToggled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue.withOpacity(0.3),
        body: Row(children: [
          Container(
            width: 250,
            child: sideMenu(),
          ),
          Expanded(
              // Use Expanded to ensure the grid takes remaining space
              child: Column(
            children: [
              AppBar(
                backgroundColor: TColors.textWhite,
                title: Text(
                  "MANUAL CONTROL",
                  style: GoogleFonts.inknutAntiqua().copyWith(
                    color: TColors.textBlack, // Custom text color
                    fontSize: 25, // Custom font size
                  ),
                ),
                centerTitle: false,
                toolbarHeight: 90,
                actions: [
                  IconButton(
                    icon: const Icon(Iconsax.notification),
                    onPressed: () {
                      // Add your notification functionality here
                    },
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        QManualContainer(
                          title: 'Feed Pump',
                        ),
                        SizedBox(height: 10),
                        QManualContainer(
                          title: 'Inlet Valve',
                        ),
                        SizedBox(height: 10),
                        QManualContainer(
                          title: 'Fresh Valve',
                        ),
                        SizedBox(height: 10),
                        QManualContainer(
                          title: 'Pre Chlorination Dosing',
                        ),
                        SizedBox(height: 10),
                        QManualContainer(
                          title: 'Dechlorination Dosing',
                        ),
                        SizedBox(height: 10),
                        QManualContainer(
                          title: 'Antiscalant Dosing',
                        ),
                        SizedBox(height: 10),
                        QManualContainer(
                          title: 'Post Chlorination Dosing',
                        ),
                        SizedBox(height: 10),
                        QManualContainer(
                          title: 'Blending Valve',
                        ),
                        SizedBox(height: 10),
                        QManualContainer(
                          title: 'High Pressure Pump',
                        ),
                        SizedBox(height: 10),
                        QManualContainer(
                          title: 'Post UV',
                        ),
                        SizedBox(height: 10),
                        QManualContainer(
                          title: 'Flush Valve',
                        ),
                      ]),
                ),
              ),
            ],
          ))
        ]));
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
        color: TColors.textWhite, // Replace with your TColors.appBarColor
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
