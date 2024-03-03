import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int currenIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, p1) {
            currenIndex = p1?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
            showTitle: false,
            value: 40,
            radius: currenIndex == 0 ? 70 : 50,
            color: Colors.blue,
          ),
          PieChartSectionData(
            showTitle: false,
            value: 20,
            radius: currenIndex == 1 ? 70 : 50,
            color: const Color.fromARGB(255, 25, 84, 132),
          ),
          PieChartSectionData(
            showTitle: false,
            value: 10,
            radius: currenIndex == 2 ? 70 : 50,
            color: const Color.fromARGB(255, 7, 34, 56),
          ),
          PieChartSectionData(
            showTitle: false,
            value: 30,
            radius: currenIndex == 3 ? 70 : 50,
            color: const Color.fromARGB(255, 86, 106, 123),
          ),
        ]);
  }
}
