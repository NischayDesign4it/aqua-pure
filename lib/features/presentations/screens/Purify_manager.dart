import 'package:aqua_pure/features/presentations/screens/Dashboard.dart';
import 'package:aqua_pure/utils/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class PurifierManager extends StatelessWidget {
  PurifierManager({super.key});

  late List<Map<String, dynamic>> _data = [];
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
        appBar: QAppBar(
          menuIcon: Iconsax.menu_1, onPressed: () { _scaffoldKey.currentState?.openDrawer(); },
          notificationIcon: Iconsax.notification,
          userIcon: Iconsax.user,
          title: 'Purifier Manager',
        ),
        body: ListView(children: [
          SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child:
            Text("Home / Dashboard"),
          ),
          SizedBox(height: 10.0),

          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                color: TColors.appBarColor.withOpacity(0.7),
                child: DataTable(
                  dividerThickness: 2,
                  columns: [
                    DataColumn(label: Text("SR No.")),
                    DataColumn(label: Text("Purifier Name")),
                    DataColumn(label: Text("Location")),
                    DataColumn(label: Text("Status")),
                    DataColumn(label: Text("Edit")),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('1')),
                      DataCell(Text('PurifierName_1')),
                      DataCell(Text('CityName_1')),
                      DataCell(Text('Active')),
                      DataCell(IconButton(
                        onPressed: () {},
                        icon: Icon(Iconsax.edit),
                      )),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('2')),
                      DataCell(Text('PurifierName_2')),
                      DataCell(Text('CityName_2')),
                      DataCell(Text('Inactive')),
                      DataCell(IconButton(
                        onPressed: () {},
                        icon: Icon(Iconsax.edit),
                      )),
                    ]),
                  ],
                ),
              ))
        ]));
  }
}
