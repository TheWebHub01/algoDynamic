import 'package:algodynamic/models/mockdata.dart';
import 'package:algodynamic/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:interactive_chart/interactive_chart.dart';

class TechnicalScreen extends StatefulWidget {
  final String title;
  const TechnicalScreen({super.key, required this.title});

  @override
  State<TechnicalScreen> createState() => _TechnicalScreenState();
}

class _TechnicalScreenState extends State<TechnicalScreen>
    with TickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(
      initialIndex: 0,
      length: 3,
      vsync: this,
    );
  }

  List minutes = [
    'Min',
    '3Min',
    '5Min',
    '10Min',
    '15Min',
    '30Min',
    '1 Hour',
    '1 Day',
  ];
  final List<CandleData> _data = MockDataTesla.candles;

  int selectedIndex = 6;
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
          "Technicals",
          style: TextStyle(fontSize: 18, color: appcolors.whiteColor),
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: SvgPicture.asset("assets/svg/more_vert.svg"))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  widget.title,
                  style: TextStyle(fontSize: 14, color: appcolors.whiteColor),
                ),
                const Spacer(),
                Text(
                  "589.80",
                  style: TextStyle(fontSize: 12, color: appcolors.whiteColor),
                ),
                Text(
                  " (-0.30%)",
                  style: TextStyle(fontSize: 12, color: appcolors.redColor),
                ),
              ],
            ),
            TabBar(
                indicatorPadding: const EdgeInsets.symmetric(horizontal: 15),
                unselectedLabelColor: const Color(0xFFABABAB),
                labelColor: appcolors.appColor,
                indicatorColor: appcolors.appColor,
                controller: tabController,
                tabs: const [
                  Tab(
                    text: "Technicals",
                  ),
                  Tab(
                    text: "Markets",
                  ),
                  Tab(
                    text: "Scanners",
                  ),
                ]),
            Expanded(
              child: TabBarView(controller: tabController, children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      // margin: const EdgeInsets.symmetric(horizontal: 15),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 7, vertical: 12),
                      decoration: BoxDecoration(
                          color: const Color(0xFF0E0E0E),
                          borderRadius: BorderRadius.circular(11),
                          border: Border.all(color: const Color(0xFF292929))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          for (int i = 0; i < minutes.length; i++)
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedIndex = i;
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: selectedIndex == i
                                      ? appcolors.appColor
                                      : Colors.transparent,
                                ),
                                child: Text(
                                  minutes[i],
                                  style: TextStyle(
                                      fontSize: 11,
                                      color: selectedIndex == i
                                          ? appcolors.blackColor
                                          : const Color(0xFFABABAB)),
                                ),
                              ),
                            )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Summary",
                      style:
                          TextStyle(fontSize: 14, color: appcolors.whiteColor),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: const Color(0xFF292929),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    const Row(
                      children: [
                        Text(
                          "Support",
                          style: TextStyle(
                            color: Color(0xFFA9A9A9),
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Resistance",
                          style: TextStyle(
                            color: Color(0xFFA9A9A9),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text(
                          "Short Term (5 & 20 SMA CrossOver)",
                          style: TextStyle(
                              color: appcolors.whiteColor, fontSize: 13),
                        ),
                        const Spacer(),
                        Text(
                          "Bullish",
                          style: TextStyle(
                            fontSize: 15,
                            color: appcolors.appColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text(
                          "Long Term (50 & 200 SMA CrossOver)",
                          style: TextStyle(
                              color: appcolors.whiteColor, fontSize: 13),
                        ),
                        const Spacer(),
                        Text(
                          "------",
                          style: TextStyle(
                            fontSize: 15,
                            color: appcolors.whiteColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text(
                          "RSI (14)",
                          style: TextStyle(
                              color: appcolors.whiteColor, fontSize: 13),
                        ),
                        const Spacer(),
                        Text(
                          "65 - Neutral",
                          style: TextStyle(
                            fontSize: 15,
                            color: appcolors.whiteColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Technical Events",
                      style:
                          TextStyle(fontSize: 14, color: appcolors.whiteColor),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                          color: const Color(0xFF0E0E0E),
                          borderRadius: BorderRadius.circular(11),
                          border: Border.all(color: const Color(0xFF292929))),
                      height: 250,
                      child: InteractiveChart(
                        candles: _data,
                      ),
                    )
                  ],
                ),
                const Column(
                  children: [],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Popular Scanners",
                          style: TextStyle(color: appcolors.whiteColor),
                        ),
                        Spacer(),
                        Text(
                          "View all",
                          style: TextStyle(
                              color: appcolors.appColor, fontSize: 10),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        SvgPicture.asset("assets/svg/next2.svg")
                      ],
                    ),
                    // Stack(
                    //   children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          border: Border.all(color: Color(0xFF292929))),
                      child: Column(
                        children: [
                          SvgPicture.asset("assets/svg/graph_2.svg"),
                          Text(
                            "Bearish SMA\nAnd RSI",
                            style: TextStyle(color: appcolors.whiteColor),
                          )
                        ],
                      ),
                    ),
                    // Positioned(
                    //   bottom: -10,
                    //   child: Container(
                    //     height: 30,
                    //     width: 50,
                    //     color: Colors.amber,
                    //   ),
                    // )
                    //   ],
                    // )
                  ],
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
