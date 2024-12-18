import 'package:algodynamic/utils/colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spline_chart/spline_chart.dart';

class BullishSwingsScreen extends StatefulWidget {
  const BullishSwingsScreen({super.key});

  @override
  State<BullishSwingsScreen> createState() => _BullishSwingsScreenState();
}

class _BullishSwingsScreenState extends State<BullishSwingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: SvgPicture.asset(
            "assets/svg/back.svg",
          ),
        ),
        title: Text(
          "Bullish Swings",
          style: TextStyle(fontSize: 18, color: appcolors.whiteColor),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Text(
                "TATAMOTORS",
                style: TextStyle(color: appcolors.whiteColor, fontSize: 16),
              ),
              const Spacer(),
              RichText(
                text: TextSpan(
                  children: [
                    new TextSpan(
                      text: '708.95',
                    ),
                    new TextSpan(
                        text: '(+4.79%)',
                        style: TextStyle(color: Color(0xff95E362))),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: const Color(0xFF292929))),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Backtest P&L",
                      style: TextStyle(
                        color: appcolors.whiteColor,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "+26025 (+59.79 %)",
                      style: TextStyle(
                        color: appcolors.appColor,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "29 Nov 2020 to 28 Nov 2023",
                      style: TextStyle(
                        color: appcolors.whiteColor,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "184.52",
                          style: TextStyle(
                              color: appcolors.appColor, fontSize: 18),
                        ),
                        Text(
                          "Period High",
                          style: TextStyle(
                              color: appcolors.whiteColor, fontSize: 15),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "150.34",
                          style: TextStyle(
                              color: appcolors.appColor, fontSize: 18),
                        ),
                        Text(
                          "Period Low",
                          style: TextStyle(
                              color: appcolors.whiteColor, fontSize: 15),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "2.31%",
                          style: TextStyle(
                              color: appcolors.appColor, fontSize: 18),
                        ),
                        Text(
                          "Period Return",
                          style: TextStyle(
                              color: appcolors.whiteColor, fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: AspectRatio(
                aspectRatio: 1.8,
                child: LineChart(
                  LineChartData(
                    gridData: FlGridData(
                      show: true,
                      drawVerticalLine: false,
                      getDrawingHorizontalLine: (value) => FlLine(
                        color: appcolors.greyColor,
                        strokeWidth: 1,
                      ),
                    ),
                    titlesData: FlTitlesData(
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          reservedSize: 25,
                          getTitlesWidget: (value, _) {
                            switch (value.toInt()) {
                              case 0:
                                return const Text('2023',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold));
                              case 2:
                                return const Text('Mar',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold));
                              case 4:
                                return const Text('May',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold));
                              case 6:
                                return const Text('Jul',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold));
                              case 8:
                                return const Text('22',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold));
                              default:
                                return const SizedBox.shrink();
                            }
                          },
                          interval: 2,
                        ),
                      ),
                      leftTitles:
                          AxisTitles(sideTitles: SideTitles(showTitles: false)),
                      topTitles:
                          AxisTitles(sideTitles: SideTitles(showTitles: false)),
                      rightTitles:
                          AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    ),
                    borderData: FlBorderData(show: false),
                    minX: 0,
                    maxX: 8,
                    minY: 0,
                    maxY: 4,
                    lineBarsData: [
                      LineChartBarData(
                        isCurved: true,
                        color: appcolors.appColor,
                        barWidth: 3,
                        isStrokeCapRound: true,
                        belowBarData: BarAreaData(
                          show: true,
                          color: appcolors.appColor.withOpacity(0.42),
                        ),
                        dotData: FlDotData(show: false),
                        spots: const [
                          FlSpot(0, 2),
                          FlSpot(2, 1.5),
                          FlSpot(4, 2.8),
                          FlSpot(6, 1.6),
                          FlSpot(8, 3.2),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // SplineChart(
          //   values: {0: 10, 15: 30, 50: 10, 44: 100, 80: 50, 100: 90},
          //   verticalLineEnabled: true,
          //   verticalLinePosition: 90.0,
          //   verticalLineStrokeWidth: 2.0,
          //   verticalLineText: "The middle",
          //   drawCircles: true,
          //   circleRadius: 5,
          //   width: 320,
          //   height: 400,
          // )
        ],
      ),
    );
  }
}

LineChartData _buildChartData() {
  return LineChartData(
    backgroundColor: const Color(0xff50d050),
    gridData: FlGridData(
      show: true,
      drawVerticalLine: false,
      getDrawingHorizontalLine: (value) => FlLine(
        color: Colors.black.withOpacity(0.2), // Gridline color
        strokeWidth: 1,
      ),
    ),
    titlesData: FlTitlesData(
      show: true,
      bottomTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          reservedSize: 25,
          getTitlesWidget: (value, _) {
            switch (value.toInt()) {
              case 0:
                return const Text('2023',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold));
              case 3:
                return const Text('Mar',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold));
              case 5:
                return const Text('May',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold));
              case 7:
                return const Text('Jul',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold));
              case 10:
                return const Text('22',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold));
              default:
                return const SizedBox.shrink();
            }
          },
          interval: 1,
        ),
      ),
      leftTitles: AxisTitles(
        sideTitles: SideTitles(showTitles: false), // No left-side titles
      ),
      topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
      rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
    ),
    borderData: FlBorderData(
      show: false, // Remove borders around the chart
    ),
    lineBarsData: [
      LineChartBarData(
        isCurved: true,
        color: Colors.black,
        barWidth: 2.5,
        isStrokeCapRound: true,
        belowBarData: BarAreaData(
          show: true,
          color: Colors.white.withOpacity(0.15), // Shaded area
        ),
        dotData: FlDotData(show: false), // No dots on the line
        spots: const [
          FlSpot(0, 2),
          FlSpot(2, 1.8),
          FlSpot(3, 2.4),
          FlSpot(5, 1.6),
          FlSpot(7, 2.8),
          FlSpot(8, 2.5),
          FlSpot(10, 3.2),
        ],
      ),
    ],
    minX: 0,
    maxX: 10,
    minY: 0,
    maxY: 4,
  );
}
