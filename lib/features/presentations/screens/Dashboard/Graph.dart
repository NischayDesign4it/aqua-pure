import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../../../../utils/constants/colors.dart';

class QGraph extends StatefulWidget {
  const QGraph({super.key});

  @override
  State<QGraph> createState() => _QGraphState();
}

class _QGraphState extends State<QGraph> {
  late List<_SalesData> _sales;

  @override
  void initState() {
    _sales = <_SalesData>[
      _SalesData('Jan', 35),
      _SalesData('Feb', 28),
      _SalesData('Mar', 34),
      _SalesData('Apr', 32),
      _SalesData('May', 40),
      _SalesData('Jun', 47),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
            color: Colors.white, // Background color
            borderRadius: BorderRadius.circular(20), // Rounded corners
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3), // Shadow color
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // Shadow position
              ),
            ],
          ),
          padding: const EdgeInsets.all(16), // Padding inside the container
          height: 400,
          width: double.infinity,
          child: SfCartesianChart(
            primaryXAxis: const CategoryAxis(),
            title: const ChartTitle(text: 'Half yearly sales analysis'),
            legend: const Legend(isVisible: true),
            tooltipBehavior: TooltipBehavior(enable: true),
            series: <CartesianSeries<_SalesData, String>>[
              LineSeries(
                name: 'Sales',
                dataSource: _sales,
                xValueMapper: (_SalesData sales, int index) => sales.year,
                yValueMapper: (_SalesData sales, int index) => sales.sales,
                dataLabelSettings: const DataLabelSettings(isVisible: true),
              ),
            ],
          ),
        );
  }

  @override
  void dispose() {
    _sales.clear();
    super.dispose();
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
