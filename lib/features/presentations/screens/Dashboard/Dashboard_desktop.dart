import 'package:flutter/material.dart';
import 'package:aqua_pure/utils/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../common/QContainerSquare.dart';
import '../../../../common/sideMenu.dart';
import 'Graph.dart';

class DashboardDesktop extends StatefulWidget {
  const DashboardDesktop({super.key});

  @override
  State<DashboardDesktop> createState() => _DashboardDesktopState();
}

class _DashboardDesktopState extends State<DashboardDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.withOpacity(0.3),
      body: Row(
        children: [
          Container(
            width: 250,
            child: sideMenu(),
          ),
          Expanded(
            child: LayoutBuilder(
              builder: (context, screenSize) {
                final double containerWidth = screenSize.maxWidth * 0.20;
                final double containerHeight = screenSize.maxHeight * 0.30;
                return Column(
                  children: [
                    AppBar(
                      backgroundColor: TColors.textWhite,
                      title: Text(
                        "DASHBOARD",
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
                    SizedBox(height: screenSize.maxHeight * 0.03),
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              QContainer(
                                titleText: "05\nPurifiers",
                                activeText: "03 Active",
                                inactiveText: "02 Inactive",
                                moreInfoText: "More info",
                                titleIcon: Iconsax.box,
                                moreInfoIcon: Iconsax.direct_right,
                                startColor: const Color(0xFF0D4456),
                                endColor: const Color(0xFF1D95BC),
                                dividerColor: Colors.white,
                                width: containerWidth,
                                height: containerHeight,
                              ),
                              QContainer(
                                titleText: "Main\nInterface",
                                activeText: "",
                                inactiveText: "",
                                moreInfoText: "More info",
                                titleIcon: Iconsax.menu_board4,
                                moreInfoIcon: Iconsax.direct_right,
                                startColor: const Color(0xFF4B1D0A),
                                endColor: const Color(0xFFC75829),
                                dividerColor: Colors.white,
                                width: containerWidth,
                                height: containerHeight,
                              ),
                              QContainer(
                                titleText: "34\nNotification",
                                activeText: "",
                                inactiveText: "",
                                moreInfoText: "More info",
                                titleIcon: Iconsax.notification,
                                moreInfoIcon: Iconsax.direct_right,
                                startColor: const Color(0xFF354C10),
                                endColor: const Color(0xFF7CB224),
                                dividerColor: Colors.white,
                                width: containerWidth,
                                height: containerHeight,
                              ),
                              QContainer(
                                titleText: "10\nAlarm",
                                activeText: "",
                                inactiveText: "",
                                moreInfoText: "More info",
                                titleIcon: Iconsax.alarm,
                                moreInfoIcon: Iconsax.direct_right,
                                startColor: const Color(0xFF70470A),
                                endColor: const Color(0xFFD68814),
                                dividerColor: Colors.white,
                                width: containerWidth,
                                height: containerHeight,
                              ),
                            ],
                          ),
                          SizedBox(height: screenSize.maxHeight * 0.01),
                          // Adjusted spacing
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(55, 28, 18, 18),
                                    child: Container(
                                      height: 500,
                                      color: Colors.white, // Set the background color
                                      child: QGraph(),
                                    ),
                                  ),
                                ),
                                SizedBox(width: screenSize.maxWidth * 0.03), // Spacing between graphs
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(15, 28, 58, 18),
                                    child: Container(
                                      height: 500,
                                      color: Colors.white, // Set the background color
                                      child: QGraph(),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
