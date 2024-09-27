import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartSample extends StatelessWidget {
  const LineChartSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 250,
        child: LineChart(
            LineChartData(
              borderData: FlBorderData(
                show: true,
                border: Border.all(
                  color: const Color(0xff37434d),
                  width: 1,
                ),
              ),
              lineBarsData: [
                LineChartBarData(
                  spots: [
                    FlSpot(0, 1),
                    FlSpot(1, 1.5),
                    FlSpot(2, 1.4),
                    FlSpot(3, 3.4),
                    FlSpot(4, 2),
                    FlSpot(5, 2.2),
                    FlSpot(6, 1.8),
                  ],
                  isCurved: true, // Make the line curve
                  color: Colors.blue,
                  barWidth: 4,
                  belowBarData: BarAreaData(
                    show: true,
                    color: Colors.blue.withOpacity(0.3),
                  ),
                ),
              ],
              titlesData: FlTitlesData(
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 22,
                    getTitlesWidget: (value, meta) {
                      switch (value.toInt()) {
                        case 0:
                          return Text('Mon');
                        case 1:
                          return Text('Tue');
                        case 2:
                          return Text('Wed');
                        case 3:
                          return Text('Thu');
                        case 4:
                          return Text('Fri');
                        case 5:
                          return Text('Sat');
                        case 6:
                          return Text('Sun');
                        default:
                          return Text('');
                      }
                    },
                  ),
                ),
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    interval: 1,
                    reservedSize: 30,
                    getTitlesWidget: (value, meta) {
                      return Text(value.toString());
                    },
                  ),
                ),
              ),
            ),
          ),
      )
    );
  }
}


