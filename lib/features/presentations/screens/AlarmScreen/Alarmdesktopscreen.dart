import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../../../../common/QAppBar.dart';
import '../../../../common/sideMenu.dart';
import '../../../../utils/constants/colors.dart';

class Alarmdesktopscreen extends StatefulWidget {
  const Alarmdesktopscreen({super.key});

  @override
  State<Alarmdesktopscreen> createState() => _AlarmdesktopscreenState();
}

class _AlarmdesktopscreenState extends State<Alarmdesktopscreen> {
  late AlarmDataSource alarmDataSource;

  @override
  void initState() {
    super.initState();
    alarmDataSource = AlarmDataSource(alarmData: [
      Alarm(1, 'Alarm_1', '3/10/2024/9:21AM', 'Pump Fault', 'Level 1'),
      Alarm(2, 'Alarm_2', '3/10/2024/9:21AM', 'Pump Fault', 'Level 2'),
      Alarm(3, 'Alarm_3', '3/10/2024/9:21AM', 'Pump Fault', 'Level 3'),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(children: [
      Container(
        width: 250,
        child: sideMenu(),
      ),
      Expanded(
        child: Column(
          children: [
            AppBar(
              backgroundColor: TColors.textWhite,
              title: Text(
                "ALARM HISTORY",
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
                    SfDataGrid(
                      source: alarmDataSource,
                      columnWidthMode: ColumnWidthMode.fill,
                      columns: <GridColumn>[
                        GridColumn(
                          columnName: 'id',
                          label: Container(
                            padding: EdgeInsets.all(16.0),
                            alignment: Alignment.center,
                            color: TColors.button,
                            child: Text(
                              'SR.No.',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        GridColumn(
                          columnName: 'name',
                          label: Container(
                            padding: EdgeInsets.all(8.0),
                            alignment: Alignment.center,
                            color: TColors.button,
                            child: Text('ALARM',
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                        GridColumn(
                          columnName: 'DateTime',
                          label: Container(
                            padding: EdgeInsets.all(8.0),
                            alignment: Alignment.center,
                            color: TColors.button,
                            child: Text(
                              'DATETIME',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        GridColumn(
                          columnName: 'description',
                          label: Container(
                            padding: EdgeInsets.all(8.0),
                            alignment: Alignment.center,
                            color: TColors.button,
                            child: Text('DESC..',
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                        GridColumn(
                          columnName: 'alarmLevel',
                          label: Container(
                            padding: EdgeInsets.all(8.0),
                            alignment: Alignment.center,
                            color: TColors.button,
                            child: Text('ALARM LEVELS',
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                      ],
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

class Alarm {
  Alarm(this.id, this.name, this.DateTime, this.description, this.alarmLevel);

  final int id;
  final String name;
  final String DateTime;
  final String description;
  final String alarmLevel;
}

class AlarmDataSource extends DataGridSource {
  AlarmDataSource({required List<Alarm> alarmData}) {
    _alarmData = alarmData
        .map<DataGridRow>((e) => DataGridRow(cells: [
              DataGridCell<int>(columnName: 'id', value: e.id),
              DataGridCell<String>(columnName: 'name', value: e.name),
              DataGridCell<String>(columnName: 'DateTime', value: e.DateTime),
              DataGridCell<String>(
                  columnName: 'description', value: e.description),
              DataGridCell<String>(
                  columnName: 'alarmLevel', value: e.alarmLevel),
            ]))
        .toList();
  }

  List<DataGridRow> _alarmData = [];

  @override
  List<DataGridRow> get rows => _alarmData;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((e) {
      return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(8.0),
        color: Colors.white,
        child: Text(
          e.value.toString(),
          style: TextStyle(color: TColors.textBlack),
        ),
      );
    }).toList());
  }
}
