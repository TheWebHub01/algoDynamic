import 'package:algodynamic/utils/colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BullishSwingsScreen extends StatefulWidget {
  final bool positive;
  const BullishSwingsScreen({super.key, this.positive = true});

  @override
  State<BullishSwingsScreen> createState() => _BullishSwingsScreenState();
}

class _BullishSwingsScreenState extends State<BullishSwingsScreen> {
  bool isSwitched = false;

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
          style: TextStyle(fontSize: 20, color: appcolors.whiteColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "TATAMOTORS",
                  style: TextStyle(color: appcolors.whiteColor, fontSize: 14),
                ),
                const Spacer(),
                RichText(
                  text: TextSpan(
                    children: [
                      new TextSpan(
                          text: '708.95',
                          style: TextStyle(
                              color: appcolors.whiteColor, fontSize: 12)),
                      new TextSpan(
                          text: '(+4.79%)',
                          style: TextStyle(
                              color: appcolors.appColor, fontSize: 12)),
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
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "+26025 (+59.79 %)",
                        style: TextStyle(
                          color: appcolors.appColor,
                          fontSize: 14,
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
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "184.52",
                            style: TextStyle(
                                color: appcolors.appColor, fontSize: 15),
                          ),
                          Text(
                            "Period High",
                            style: TextStyle(
                                color: appcolors.whiteColor, fontSize: 12),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "150.34",
                            style: TextStyle(
                                color: appcolors.appColor, fontSize: 15),
                          ),
                          Text(
                            "Period Low",
                            style: TextStyle(
                                color: appcolors.whiteColor, fontSize: 12),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "2.31%",
                            style: TextStyle(
                                color: appcolors.appColor, fontSize: 15),
                          ),
                          Text(
                            "Period Return",
                            style: TextStyle(
                                color: appcolors.whiteColor, fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            widget.positive
                ? SizedBox()
                : Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: const Color(0xFF292929))),
                    child: Center(
                      child: AspectRatio(
                        aspectRatio: 1.8,
                        child: LineChart(
                          LineChartData(
                            gridData: FlGridData(
                              show: true,
                              drawVerticalLine: false,
                              getDrawingHorizontalLine: (value) => FlLine(
                                color: appcolors.greyColor, // Grey grid lines
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
                                        return Text('2023',
                                            style: TextStyle(
                                                color: appcolors.whiteColor,
                                                fontSize: 12));
                                      case 2:
                                        return Text('Mar',
                                            style: TextStyle(
                                                color: appcolors.whiteColor,
                                                fontSize: 12));
                                      case 4:
                                        return Text('May',
                                            style: TextStyle(
                                                color: appcolors.whiteColor,
                                                fontSize: 12));
                                      case 6:
                                        return Text('Jul',
                                            style: TextStyle(
                                                color: appcolors.whiteColor,
                                                fontSize: 12));
                                      case 8:
                                        return Text('22',
                                            style: TextStyle(
                                                color: appcolors.whiteColor,
                                                fontSize: 12));
                                      default:
                                        return const SizedBox.shrink();
                                    }
                                  },
                                  interval: 2,
                                ),
                              ),
                              leftTitles: const AxisTitles(
                                  sideTitles: SideTitles(showTitles: false)),
                              topTitles: const AxisTitles(
                                  sideTitles: SideTitles(showTitles: false)),
                              rightTitles: const AxisTitles(
                                  sideTitles: SideTitles(showTitles: false)),
                            ),
                            borderData: FlBorderData(
                              show: true,
                              border: Border(
                                left: BorderSide(
                                  color: appcolors.greyColor, // Grey Y-axis
                                  width: 1,
                                ),
                                bottom: BorderSide(
                                  color: appcolors.greyColor, // Grey X-axis
                                  width: 1,
                                ),
                                right: const BorderSide(
                                  color: Colors.transparent, // No right border
                                ),
                                top: const BorderSide(
                                  color: Colors.transparent, // No top border
                                ),
                              ),
                            ),
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
                                  color: appcolors.appColor.withOpacity(0.30),
                                ),
                                dotData: const FlDotData(show: false),
                                spots: const [
                                  FlSpot(0, 2),
                                  FlSpot(2, 1.5),
                                  FlSpot(4, 2.8),
                                  FlSpot(6, 2),
                                  FlSpot(8, 3.6),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
            Row(
              children: [
                Text(
                  widget.positive
                      ? "Transaction Charges"
                      : "Transaction Details",
                  style: TextStyle(color: appcolors.whiteColor, fontSize: 14),
                ),
                const Spacer(),
                Text(
                  widget.positive ? "" : "Brokers",
                  style: TextStyle(color: appcolors.appColor, fontSize: 14),
                ),
                Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                  },
                  inactiveTrackColor: appcolors.whiteColor.withOpacity(0.3),
                  activeTrackColor: appcolors.whiteColor,
                  activeColor: appcolors.appColor,
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "403",
                            style: TextStyle(
                                color: appcolors.appColor, fontSize: 15),
                          ),
                          Text(
                            "Total number of trades",
                            style: TextStyle(
                                color: appcolors.whiteColor, fontSize: 10),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "172",
                            style: TextStyle(
                                color: appcolors.appColor, fontSize: 15),
                          ),
                          Text(
                            "Number of Wins",
                            style: TextStyle(
                                color: appcolors.whiteColor, fontSize: 10),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "224",
                            style: TextStyle(
                                color: appcolors.appColor, fontSize: 15),
                          ),
                          Text(
                            "Number of Lossers",
                            style: TextStyle(
                                color: appcolors.whiteColor, fontSize: 10),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "3.08",
                            style: TextStyle(
                                color: appcolors.appColor, fontSize: 15),
                          ),
                          Text(
                            "Winning Streak",
                            style: TextStyle(
                                color: appcolors.whiteColor, fontSize: 10),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "4.17",
                            style: TextStyle(
                                color: appcolors.appColor, fontSize: 15),
                          ),
                          Text(
                            "Losing Streak",
                            style: TextStyle(
                                color: appcolors.whiteColor, fontSize: 10),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "-3.1200",
                            style: TextStyle(
                                color: appcolors.appColor, fontSize: 15),
                          ),
                          Text(
                            "Max DD",
                            style: TextStyle(
                                color: appcolors.whiteColor, fontSize: 10),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
