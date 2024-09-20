

import 'package:aqua_pure/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

// class DashBoardScreen extends StatefulWidget {
//   const DashBoardScreen({super.key});
//
//   @override
//   State<DashBoardScreen> createState() => _DashBoardScreenState();
// }

// class _DashBoardScreenState extends State<DashBoardScreen> {
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
//
//   @override
//   Widget build(BuildContext context) {
//     final Size screenSize = MediaQuery.of(context).size;
//     final double containerWidth = screenSize.width * 0.45;
//     final double containerHeight = screenSize.height * 0.20;
//
//     return Scaffold(
//       key: _scaffoldKey,
//       appBar: QAppBar(
//         menuIcon: Iconsax.menu_1,
//         onPressed: () {
//           _scaffoldKey.currentState?.openDrawer();  // Open the drawer using the GlobalKey
//         },
//         notificationIcon: Iconsax.notification,
//         userIcon: Iconsax.user,
//         title: 'Dashboard  ',
//       ),
//       drawer: sideMenu(),  // Add the drawer here
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text("Home / Dashboard"),
//             SizedBox(height: 10),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 QContainer(
//                   titleText: "05\nPurifiers",
//                   activeText: "03 Active",
//                   inactiveText: "02 Inactive",
//                   moreInfoText: "More info",
//                   titleIcon: Iconsax.box,
//                   moreInfoIcon: Iconsax.direct_right,
//                   startColor: const Color(0xFF0D4456),
//                   endColor: const Color(0xFF1D95BC),
//                   dividerColor: Colors.white,
//                   width: containerWidth,
//                   height: containerHeight,
//                 ),
//                 SizedBox(width: screenSize.width * 0.02),
//                 QContainer(
//                   titleText: "Main\nInterface",
//                   activeText: "",
//                   inactiveText: "",
//                   moreInfoText: "More info",
//                   titleIcon: Iconsax.menu_board4,
//                   moreInfoIcon: Iconsax.direct_right,
//                   startColor: const Color(0xFF4B1D0A),
//                   endColor: const Color(0xFFC75829),
//                   dividerColor: Colors.white,
//                   width: containerWidth,
//                   height: containerHeight,
//                 ),
//               ],
//             ),
//             SizedBox(height: screenSize.height * 0.02),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 QContainer(
//                   titleText: "34\nNotification",
//                   activeText: "",
//                   inactiveText: "",
//                   moreInfoText: "More info",
//                   titleIcon: Iconsax.notification,
//                   moreInfoIcon: Iconsax.direct_right,
//                   startColor: const Color(0xFF354C10),
//                   endColor: const Color(0xFF7CB224),
//                   dividerColor: Colors.white,
//                   width: containerWidth,
//                   height: containerHeight,
//                 ),
//                 SizedBox(width: screenSize.width * 0.02),
//                 QContainer(
//                   titleText: "10\nAlarm",
//                   activeText: "",
//                   inactiveText: "",
//                   moreInfoText: "More info",
//                   titleIcon: Iconsax.alarm,
//                   moreInfoIcon: Iconsax.direct_right,
//                   startColor: const Color(0xFF70470A),
//                   endColor: const Color(0xFFD68814),
//                   dividerColor: Colors.white,
//                   width: containerWidth,
//                   height: containerHeight,
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool isDesktop = false;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double containerWidth = screenSize.width * 0.45;
    final double containerHeight = screenSize.height * 0.20;

    // Check if the screen width is large enough to be considered a desktop view
    isDesktop = screenSize.width > 1024;

    return Scaffold(
      key: _scaffoldKey,
      appBar: isDesktop
          ? null // No app bar in desktop view
          : QAppBar(
        menuIcon: Iconsax.menu_1,
        onPressed: () {
          _scaffoldKey.currentState?.openDrawer();  // Open the drawer using the GlobalKey
        },
        notificationIcon: Iconsax.notification,
        userIcon: Iconsax.user,
        title: 'Dashboard',
      ),
      drawer: isDesktop ? null : sideMenu(), // Don't use drawer in desktop mode
      body: Row(
        children: [
          if (isDesktop)
            Container(
              width: 240,
              child: sideMenu(),
            ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Home / Dashboard"),
                  SizedBox(height: 10),
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
                      SizedBox(width: screenSize.width * 0.02),
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
                    ],
                  ),
                  SizedBox(height: screenSize.height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
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
                      SizedBox(width: screenSize.width * 0.02),
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class sideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Iconsax.main_component),
            title: Text('Main Interface'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Iconsax.direct),
            title: Text('Purifier Manager'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Iconsax.menu_board),
            title: Text('Data and Tables'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Iconsax.timer_1),
            title: Text('Real Time Data'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Iconsax.add),
            title: Text('Manual Control'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Iconsax.setting),
            title: Text('Settings'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Iconsax.add),
            title: Text('Alarm History'),
            onTap: () {
              Navigator.pop(context);
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

class QAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;
  final IconData menuIcon;
  final IconData notificationIcon;
  final IconData userIcon;
  final String title;
  final VoidCallback onPressed;

  QAppBar({
    Key? key,
    this.preferredSize = const Size.fromHeight(56.0),
    required this.menuIcon,
    required this.notificationIcon,
    required this.userIcon,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: TColors.appBarColor,
      title: Text(title, style: TextStyle(color: TColors.textWhite, fontSize: 20)),
      centerTitle: true,
      leading: IconButton(
        color: TColors.textWhite,
        onPressed: onPressed,
        icon: Icon(menuIcon),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Icon(userIcon, color: TColors.textWhite),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Icon(notificationIcon, color: TColors.textWhite),
        ),
      ],
    );
  }
}

class QContainer extends StatelessWidget {
  final String titleText;
  final String activeText;
  final String inactiveText;
  final String moreInfoText;
  final IconData titleIcon;
  final IconData moreInfoIcon;
  final Color startColor;
  final Color endColor;
  final Color dividerColor;
  final double width;
  final double height;

  const QContainer({
    super.key,
    required this.titleText,
    required this.activeText,
    required this.inactiveText,
    required this.moreInfoText,
    required this.titleIcon,
    required this.moreInfoIcon,
    required this.startColor,
    required this.endColor,
    required this.dividerColor,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomRight,
          colors: [
            startColor,
            endColor,
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  titleText,
                  style: TextStyle(
                    color: TColors.textWhite,
                    fontSize: width * 0.10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  titleIcon,
                  color: TColors.textWhite,
                  size: width * 0.18,
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(activeText, style: TextStyle(color: TColors.textWhite)),
                Text(inactiveText, style: TextStyle(color: TColors.textWhite)),
              ],
            ),
          ),
          Divider(color: dividerColor),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                moreInfoText,
                style: TextStyle(
                  color: TColors.textWhite,
                  fontWeight: FontWeight.bold,
                  fontSize: width * 0.08,
                ),
              ),
              const SizedBox(width: 3),
              Icon(
                moreInfoIcon,
                color: TColors.textWhite,
                size: width * 0.08,
              ),
            ],
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
