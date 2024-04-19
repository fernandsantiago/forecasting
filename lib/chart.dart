// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';

// class SalesChart extends StatelessWidget {
//   final List<double> salesData; // The sales data to display

//   SalesChart(this.salesData);

//   @override
//   Widget build(BuildContext context) {
//     List<FlSpot> spots = [];
//     for (int i = 0; i < salesData.length; i++) {
//       spots.add(FlSpot(i.toDouble(), salesData[i]));
//     }

//     return LineChart(
//       LineChartData(
//         gridData: FlGridData(show: false),
//         titlesData: FlTitlesData(show: false),
//         borderData: FlBorderData(show: false),
//         lineBarsData: [
//           LineChartBarData(
//             spots: spots,
//             isCurved: true,
//             color: Colors.blue,
//             barWidth: 4,
//             isStrokeCapRound: true,
//             dotData: FlDotData(show: false),
//             belowBarData: BarAreaData(show: false),
//           ),
//         ],
//       ),
//     );
//   }
// }
