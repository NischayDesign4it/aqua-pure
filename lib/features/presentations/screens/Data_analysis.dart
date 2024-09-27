import 'package:aqua_pure/common/sideMenu.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../common/QAppBar.dart';
import '../../../utils/constants/colors.dart';
import 'Dashboard/Dashboard.dart';

class DataAnalysis extends StatefulWidget {
  DataAnalysis({super.key});

  @override
  _DataAnalysisState createState() => _DataAnalysisState();
}

class _DataAnalysisState extends State<DataAnalysis> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final Map<String, bool> _expandedRows = {
    'Pressure': false,
    'Water quantity': false,
    'Flow Reading': false,
  };

  // Method to toggle the expanded state
  void _toggleRowExpanded(String rowTitle) {
    setState(() {
      _expandedRows[rowTitle] = !_expandedRows[rowTitle]!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: sideMenu(),
      appBar: QAppBar(
        menuIcon: Iconsax.menu_1,
        onPressed: () {
          _scaffoldKey.currentState?.openDrawer();
        },
        notificationIcon: Iconsax.notification,
        userIcon: Iconsax.user,
        title: 'Data and Table',
      ),
      body: ListView(
        children: [
          SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text("Home / Data and Table"),
          ),
          SizedBox(height: 10.0),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              color: TColors.appBarColor.withOpacity(0.6),
              child: DataTable(
                dividerThickness: 2,
                columns: [
                  DataColumn(label: Text("")),
                  DataColumn(label: Text("Monday\nMM/DD/YYYY")),
                  DataColumn(label: Text("Tuesday\nMM/DD/YYYY")),
                  DataColumn(label: Text("Wednesday\nMM/DD/YYYY")),
                  DataColumn(label: Text("Thursday\nMM/DD/YYYY")),
                  DataColumn(label: Text("Friday\nMM/DD/YYYY")),
                  DataColumn(label: Text("Saturday\nMM/DD/YYYY")),
                  DataColumn(label: Text("Sunday\nMM/DD/YYYY")),
                ],
                rows: [
                  // Pressure Row
                  DataRow(
                    cells: [
                      DataCell(
                        IconButton(
                          onPressed: () => _toggleRowExpanded('Pressure'),
                          icon: Icon(
                            _expandedRows['Pressure']!
                                ? Iconsax.arrow_up_1
                                : Iconsax.arrow_down_2,
                          ),
                        ),
                      ),
                      DataCell(Text('Pressure')),
                      DataCell(Text('1')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                    ],
                  ),
                  if (_expandedRows['Pressure']!) ...[
                    DataRow(cells: [
                      DataCell(Text('Sub Pressure Data 1')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Sub Pressure Data 2')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                    ]),
                  ],
                  // Water Quantity Row
                  DataRow(
                    cells: [
                      DataCell(
                        IconButton(
                          onPressed: () => _toggleRowExpanded('Water quantity'),
                          icon: Icon(
                            _expandedRows['Water quantity']!
                                ? Iconsax.arrow_up_1
                                : Iconsax.arrow_down_2,
                          ),
                        ),
                      ),
                      DataCell(Text('Water quantity')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                    ],
                  ),
                  if (_expandedRows['Water quantity']!) ...[
                    DataRow(cells: [
                      DataCell(Text('Sub Water Data 1')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Sub Water Data 2')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                    ]),
                  ],
                  // Flow Reading Row
                  DataRow(
                    cells: [
                      DataCell(
                        IconButton(
                          onPressed: () => _toggleRowExpanded('Flow Reading'),
                          icon: Icon(
                            _expandedRows['Flow Reading']!
                                ? Iconsax.arrow_up_1
                                : Iconsax.arrow_down_2,
                          ),
                        ),
                      ),
                      DataCell(Text('Flow Reading')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                    ],
                  ),
                  if (_expandedRows['Flow Reading']!) ...[
                    DataRow(cells: [
                      DataCell(Text('Sub Flow Data 1')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Sub Flow Data 2')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                    ]),
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
