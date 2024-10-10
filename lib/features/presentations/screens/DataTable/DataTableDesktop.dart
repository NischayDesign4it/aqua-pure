import 'package:aqua_pure/common/sideMenu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/QAppBar.dart';
import '../../../../utils/constants/colors.dart';

class DataTableDesktop extends StatefulWidget {
  DataTableDesktop({super.key});

  @override
  _DataTableDesktopState createState() => _DataTableDesktopState();
}

class _DataTableDesktopState extends State<DataTableDesktop> {
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
                "DATA AND TABLE",
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
              child: ListView(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: TColors.textWhite,
                        child: DataTable(
                          dividerThickness: 2,
                          columns: [
                            DataColumn(label: Text("")),
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
                                    onPressed: () =>
                                        _toggleRowExpanded('Pressure'),
                                    icon: Icon(
                                      _expandedRows['Pressure']!
                                          ? Iconsax.arrow_up_1
                                          : Iconsax.arrow_down_2,
                                    ),
                                  ),
                                ),
                                DataCell(Text('Pressure')),
                                DataCell(Text('')),
                                DataCell(Text('')),
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
                                DataCell(Text('')),
                              ]),
                            ],
                            // Water Quantity Row
                            DataRow(
                              cells: [
                                DataCell(
                                  IconButton(
                                    onPressed: () =>
                                        _toggleRowExpanded('Water quantity'),
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
                                DataCell(Text('')),
                              ]),
                            ],
                            // Flow Reading Row
                            DataRow(
                              cells: [
                                DataCell(
                                  IconButton(
                                    onPressed: () =>
                                        _toggleRowExpanded('Flow Reading'),
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
                                DataCell(Text('')),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('Sub Flow Data 2')),
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
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    ]));
  }
}
