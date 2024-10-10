import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import '../../../../common/sideMenu.dart';
import '../../../../utils/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';


class PurifierDesktop extends StatefulWidget {
  const PurifierDesktop({super.key});

  @override
  _PurifierDesktopState createState() => _PurifierDesktopState();
}

class _PurifierDesktopState extends State<PurifierDesktop> {
  late PurifierDataSource purifierDataSource;

  @override
  void initState() {
    super.initState();
    purifierDataSource = PurifierDataSource(purifierData: [
      Purifier(1, 'Purifier_1', 'City_1', 'Active'),
      Purifier(2, 'Purifier_2', 'City_2', 'Inactive'),
      Purifier(3, 'Purifier_3', 'City_3', 'Inactive'),
    ]);
  }

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
            child: Column(
              children: [
                AppBar(
                  backgroundColor: TColors.textWhite,
                  title: Text(
                    "PURIFIER MANAGER",
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
                    child: SfDataGrid(
                      source: purifierDataSource,
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
                                ))),
                        GridColumn(
                            columnName: 'name',
                            label: Container(
                                padding: EdgeInsets.all(8.0),
                                alignment: Alignment.center,
                                color: TColors.button,
                                child: Text('Purifier Name', style: TextStyle(color: Colors.white)))),
                        GridColumn(
                            columnName: 'Location',
                            label: Container(
                                padding: EdgeInsets.all(8.0),
                                alignment: Alignment.center,
                                color: TColors.button,
                                child: Text(
                                  'Location',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(color: Colors.white),
                                ))),
                        GridColumn(
                            columnName: 'Status',
                            label: Container(
                                padding: EdgeInsets.all(8.0),
                                alignment: Alignment.center,
                                color: TColors.button,
                                child: Text('Status', style: TextStyle(color: Colors.white)))),
                        GridColumn(
                            columnName: 'Edit',
                            label: Container(
                                padding: EdgeInsets.all(8.0),
                                alignment: Alignment.center,
                                color: TColors.button,
                                child: Text('Action', style: TextStyle(color: Colors.white)))),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Purifier {
  Purifier(this.id, this.name, this.Location, this.Status);

  final int id;
  final String name;
  final String Location;
  final String Status;
}

class PurifierDataSource extends DataGridSource {
  PurifierDataSource({required List<Purifier> purifierData}) {
    _purifierData = purifierData
        .map<DataGridRow>((e) =>
        DataGridRow(cells: [
          DataGridCell<int>(columnName: 'id', value: e.id),
          DataGridCell<String>(columnName: 'name', value: e.name),
          DataGridCell<String>(columnName: 'Location', value: e.Location),
          DataGridCell<String>(columnName: 'Status', value: e.Status),
          DataGridCell<Icon>(columnName: 'Edit', value: Icon(Iconsax.edit)),
        ]))
        .toList();
  }

  List<DataGridRow> _purifierData = [];

  @override
  List<DataGridRow> get rows => _purifierData;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
      cells: row.getCells().map<Widget>((e) {
        if (e.columnName == 'Edit') {
          // Apply different background color for the Edit column
          return Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(8.0),
            color: TColors.textWhite, // Set the desired background color here
            child: IconButton(
              color: TColors.textBlack,
              icon: e.value as Icon,
              onPressed: () {
                // Handle edit action here
                print('Edit button clicked for ${row.getCells()[1].value}');
              },
            ),
          );
        } else {
          // Apply default background color for other columns
          return Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(8.0),
            color: Colors.white, // Default background color
            child: Text(
              e.value.toString(),
              style: TextStyle(color: TColors.textBlack),
            ),
          );
        }
      }).toList(),
    );
  }
}
