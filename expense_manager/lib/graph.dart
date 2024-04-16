import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';

class Piegraph extends StatefulWidget {
  const Piegraph({super.key});
  @override
  State createState() => _PiegraphState();
}

class _PiegraphState extends State {
  int _total = 2200;
  Map<String, double> data = {
    "Food": 650,
    "Fuel": 600,
    "Medicine": 500,
    "Entertainment": 475,
    "Shopping": 325,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pie-Chart"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 0, top: 50),
                child: PieChart(
                  dataMap: data,
                  animationDuration: const Duration(milliseconds: 2000),
                  chartType: ChartType.ring,
                  chartRadius: 180,
                  ringStrokeWidth: 40,
                  centerText: """Total
                                  $_total""",
                  // centerTextStyle: GoogleFonts.poppins(
                  //   fontSize: 10,
                  //   fontWeight: FontWeight.w400,
                  // ),
                  chartValuesOptions: const ChartValuesOptions(
                    showChartValuesInPercentage: false,
                    showChartValues: false,
                  ),
                  legendOptions: const LegendOptions(
                    //legendPosition: LegendPosition.bottom,
                    legendShape: BoxShape.circle,
                    // showLegends: false,
                  ),
                ),
              ),
              //  SizedBox(width: 20,),
            ],
          ),
        ],
      ),
    );
  }
}
