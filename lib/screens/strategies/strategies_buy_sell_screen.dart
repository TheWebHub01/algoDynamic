import 'package:algodynamic/constants/custom_dropdown/custom_drop_down.dart';
import 'package:algodynamic/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StrategiesBuySellScreen extends StatefulWidget {
  const StrategiesBuySellScreen({super.key});

  @override
  State<StrategiesBuySellScreen> createState() =>
      _StrategiesBuySellScreenState();
}

class _StrategiesBuySellScreenState extends State<StrategiesBuySellScreen>
    with TickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(
      initialIndex: 0,
      length: 4,
      vsync: this,
    );
  }

  List<String> timeFramemenuOptions = [
    '1 Minute',
    '3 Minutes',
    '5 Minutes',
    '10 Minutes',
    '15 Minutes',
    '30 Minutes',
    '1 Hour',
    '1 Day'
  ];
  List<String> chartTypemenuOptions = ['Heikin-Ashi', 'Candlestick'];

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
            "Strategies",
            style: TextStyle(fontSize: 17, color: appcolors.whiteColor),
          )),
      body: Column(
        children: [
          TabBar(
              indicatorPadding: const EdgeInsets.symmetric(horizontal: 15),
              unselectedLabelColor: const Color(0xFFABABAB),
              labelColor: appcolors.appColor,
              indicatorColor: appcolors.appColor,
              controller: tabController,
              tabs: const [
                Tab(
                  text: "Position",
                ),
                Tab(
                  text: "Entry",
                ),
                Tab(
                  text: "Exit",
                ),
                Tab(
                  text: "Params",
                ),
              ]),
          Expanded(
            child: TabBarView(controller: tabController, children: [
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color(0xFF2A3225)),
                        child: Text(
                          "Buy",
                          style: TextStyle(
                              fontSize: 16, color: appcolors.appColor),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color(0xFF200C0C)),
                        child: Text(
                          "Sell",
                          style: TextStyle(
                              fontSize: 16, color: appcolors.redColor),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Instruments",
                        style: TextStyle(
                            fontSize: 16, color: appcolors.whiteColor),
                      ),
                      SvgPicture.asset("assets/svg/green-plus.svg"),
                      const Spacer(),
                      Text(
                        "View All",
                        style:
                            TextStyle(fontSize: 12, color: appcolors.appColor),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Chart Type",
                              style: TextStyle(
                                  color: appcolors.whiteColor, fontSize: 15),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            customDropDown(
                              "Candlestick",
                              () {
                                showMenu<String>(
                                  color: appcolors.blackColor,
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        color: Color(0xFF292929)),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  context: context,
                                  position: RelativeRect.fromLTRB(
                                    10, // Left margin to align closer to the left
                                    260, // Top margin (controls vertical position)
                                    MediaQuery.of(context).size.width -
                                        50, // Right alignment pushing menu left
                                    0, // Bottom
                                  ),
                                  items: chartTypemenuOptions
                                      .map((option) => PopupMenuItem<String>(
                                            value: option,
                                            child: Center(
                                              child: Text(
                                                option,
                                                style: TextStyle(
                                                    color:
                                                        appcolors.whiteColor),
                                              ),
                                            ),
                                          ))
                                      .toList(), // Convert to a list
                                  elevation: 8.0,
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Time Frame",
                              style: TextStyle(
                                  color: appcolors.whiteColor, fontSize: 15),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            customDropDown(
                              "1 Minute",
                              () {
                                final RenderBox overlay = Overlay.of(context)
                                    .context
                                    .findRenderObject() as RenderBox;
                                final double screenWidth = overlay.size.width;
                                showMenu<String>(
                                  color: appcolors.blackColor,
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        color: Color(0xFF292929)),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  context: context,
                                  position: RelativeRect.fromLTRB(
                                    screenWidth -
                                        150, // Adjust this for the exact horizontal alignment
                                    260, // Top position
                                    10, // Right-side margin
                                    0, // Bottom position
                                  ),
                                  items: timeFramemenuOptions
                                      .map((option) => PopupMenuItem<String>(
                                            value: option,
                                            child: Center(
                                              child: Text(
                                                option,
                                                style: TextStyle(
                                                    color:
                                                        appcolors.whiteColor),
                                              ),
                                            ),
                                          ))
                                      .toList(), // Convert to a list
                                  elevation: 8.0,
                                );
                              },
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Text(
                    "Holding Type",
                    style: TextStyle(color: appcolors.whiteColor, fontSize: 15),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  customDropDown(
                    "Candlestick",
                    () {
                      showMenu<String>(
                        color: appcolors.blackColor,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Color(0xFF292929)),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        context: context,
                        position: RelativeRect.fromLTRB(
                          10,
                          260,
                          MediaQuery.of(context).size.width - 50,
                          0,
                        ),
                        items: chartTypemenuOptions
                            .map((option) => PopupMenuItem<String>(
                                  value: option,
                                  child: Center(
                                    child: Text(
                                      option,
                                      style: TextStyle(
                                          color: appcolors.whiteColor),
                                    ),
                                  ),
                                ))
                            .toList(),
                        elevation: 8.0,
                      );
                    },
                  ),
                ],
              ),
              const Column(
                children: [],
              ),
              const Column(
                children: [],
              ),
              const Column(
                children: [],
              ),
            ]),
          )
        ],
      ),
    );
  }
}
