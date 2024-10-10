import 'package:aqua_pure/common/QAppBar.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import '../../../../common/sideMenu.dart';
import '../../../../utils/constants/colors.dart';

class PurifierMobile extends StatefulWidget {
  PurifierMobile({Key? key}) : super(key: key);

  @override
  _PurifierMobileState createState() => _PurifierMobileState();
}

class _PurifierMobileState extends State<PurifierMobile> {
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
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKey,
      appBar: QAppBar(
          menuIcon: Iconsax.menu_1,
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
          notificationIcon: Iconsax.notification,
          userIcon: Iconsax.user,
          title: 'Purifier Manager'
      ),
      drawer: sideMenu(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text("Home / Purifier Manager"),
          ),
          const SizedBox(height: 10),
          SfDataGrid(
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
        .map<DataGridRow>((e) => DataGridRow(cells: [
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
            return IconButton(
              icon: e.value as Icon,
              onPressed: () {
                // Handle edit action here
                print('Edit button clicked for ${row.getCells()[1].value}');
              },
            );
          } else {
            return Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(8.0),
              color: Colors.white,
              child: Text(
                e.value.toString(),
                style: TextStyle(color: TColors.textBlack),
              ),
            );
          }
        }).toList());
  }
}
