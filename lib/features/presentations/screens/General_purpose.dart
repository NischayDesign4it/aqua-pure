import 'package:aqua_pure/features/presentations/screens/Dashboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import 'RealData.dart';




class GeneralPurpose extends StatefulWidget {
  const GeneralPurpose({super.key});

  @override
  State<GeneralPurpose> createState() => _GeneralPurposeState();
}

class _GeneralPurposeState extends State<GeneralPurpose> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  // State variable to track the selected widget
  String selectedView = 'general'; // Initially, show the general view

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: sideMenu(),
      appBar: QAppBar(
        notificationIcon: Iconsax.notification,
        userIcon: Iconsax.user,
        title: 'Settings',
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
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text("Home / Settings"),
              ),
              ExpansionTile(
                title: Text("General Process"),
                onExpansionChanged: (isExpanded) {
                  if (isExpanded) {
                    setState(() {
                      selectedView = 'general'; // Show QGeneralContainer on expanding "General Process"
                    });
                  }
                },
                children: [
                  ExpansionTile(
                    title: Text("Instruments"),
                    onExpansionChanged: (isExpanded) {
                      if (isExpanded) {
                        setState(() {
                          selectedView = ''; // Reset view when instrument submenu is expanded
                        });
                      }
                    },
                    children: [
                      ListTile(
                        title: Text("RO Feed ORP"),
                        onTap: () {
                          setState(() {
                            selectedView = 'data1'; // Show QDataContainer for this submenu
                          });
                        },
                      ),
                      ListTile(
                        title: Text("RO Premeat Conductivity"),
                        onTap: () {
                          setState(() {
                            selectedView = 'data2'; // You can use different views for other submenus
                          });
                        },
                      ),
                      ListTile(
                        title: Text("RO Premeat pH"),
                        onTap: () {
                          setState(() {
                            selectedView = 'data1';
                          });
                        },
                      ),
                      ListTile(
                        title: Text("RO Product Conductivity"),
                        onTap: () {
                          setState(() {
                            selectedView = 'data2';
                          });
                        },
                      ),
                    ],
                  ),
                  ExpansionTile(
                    title: Text("User’s Manager"),
                    children: [
                      ListTile(
                        title: Text("User"),
                        onTap: () {
                          setState(() {
                            selectedView = 'userManager'; // Optionally handle other views
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 5),
              if (selectedView == 'general') QGeneralContainer(),
              if (selectedView == 'data1')
                QDataContainer(
                  title1: 'Pressure Readings',
                  title2: 'Temp Readings',
                  title3: 'Flow Rates',
                  title4: 'Conductivity',
                  title5: 'Conductivity',
                  title6: 'Conductivity',
                  title7: 'Conductivity',
                  title8: 'Conductivity',
                  title9: 'Conductivity',
                  title10: 'Conductivity',
                  heading: 'Detailed Metrics',
                ),
              if (selectedView == 'data2')
                QDataContainer(
                  title1: 'Another ',
                  title2: 'Another Metric 2',
                  title3: 'Another Metric 3',
                  title4: 'Another Metric 4',
                  title5: 'Another Metric 5',
                  title6: 'Another Metric 6',
                  title7: 'Another Metric 7',
                  title8: 'Another Metric 8',
                  title9: 'Another Metric 9',
                  title10: 'Another Metric 10',
                  heading: 'Different Detailed Metrics',
                ),
              if(selectedView == 'userManager')
                QpasswordReset()


            ],
          ),
        ),
      ),
    );
  }
}




class QGeneralContainer extends StatefulWidget {
  const QGeneralContainer({
    super.key,
  });

  @override
  _QGeneralContainerState createState() => _QGeneralContainerState();
}

class _QGeneralContainerState extends State<QGeneralContainer> {
  bool isToggled = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
          color:
              Colors.blue.withOpacity(0.3), // Customize your background color
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            QGeneralRow(),
            SizedBox(height: 10),
            Divider(color: TColors.textWhite,),


            QGeneralRow(),
            SizedBox(height: 10),
            Divider(color: TColors.textWhite,),

            QGeneralRow(),
            SizedBox(height: 10),
            Divider(color: TColors.textWhite,),

            QGeneralRow(),
            SizedBox(height: 10),
            Divider(color: TColors.textWhite,),

            QGeneralRow(),
            SizedBox(height: 10),
            Divider(color: TColors.textWhite,),

            QGeneralRow(),
            SizedBox(height: 10),
            Divider(color: TColors.textWhite,),

            QGeneralRow(),
            SizedBox(height: 10),
            Divider(color: TColors.textWhite,),

            QGeneralRow(),
            SizedBox(height: 10),
            Divider(color: TColors.textWhite,),

            QGeneralRow(),
            SizedBox(height: 10),
            Divider(color: TColors.textWhite,),

            QGeneralRow(),
            SizedBox(height: 10),
            Divider(color: TColors.textWhite,),

            QGeneralRow(),
            SizedBox(height: 10),
            Divider(color: TColors.textWhite,),

            QGeneralRow(),
            SizedBox(height: 10),


          ]),
        ));
  }
}

class QGeneralRow extends StatelessWidget {
  const QGeneralRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Valve Open/Close Delay (secs)"),
        Spacer(),
        Container(
          height: 25,
          width: 80,
          decoration:
              BoxDecoration(border: Border.all(), color: TColors.inactiveBtn),
          child: Text(
            "5",
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}


class QpasswordReset extends StatelessWidget {
  const QpasswordReset({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
        color:
        Colors.blue.withOpacity(0.3), // Customize your background color
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text("Reset Password"),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: 'Username Name',
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: 'New Password',
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: 'Confirmed Password',
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black, // foreground (text) color
                    backgroundColor: Colors.white, // background color
                  ),
                  onPressed: (){},
                  child: const Text('Submit'),
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black, // foreground (text) color
                    backgroundColor: Colors.white, // background color
                  ),
                  onPressed: (){},
                  child: const Text('cancel'),
                )

              ],
            )
          ],
        ),
      ),
    );
  }
}

