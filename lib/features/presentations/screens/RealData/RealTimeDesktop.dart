import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/QAppBar.dart';
import '../../../../common/QContainerData.dart';
import '../../../../common/sideMenu.dart';
import '../../../../utils/constants/colors.dart';

class RealDataDesktop extends StatefulWidget {
  const RealDataDesktop({super.key});

  @override
  State<RealDataDesktop> createState() => _RealDataDesktopState();
}

class _RealDataDesktopState extends State<RealDataDesktop> {
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
                    "REAL TIME DATA",
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
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
              ],
            ),
          )
        ]));
  }
}
