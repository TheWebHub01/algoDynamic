import 'package:algodynamic/screens/home/home_detail_screen.dart';
import 'package:algodynamic/screens/strategies/strategies_details_screen.dart';
import 'package:algodynamic/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StrategiesScreen extends StatefulWidget {
  const StrategiesScreen({super.key});

  @override
  State<StrategiesScreen> createState() => _StrategiesScreenState();
}

class _StrategiesScreenState extends State<StrategiesScreen> {
  List scannersList = [
    {
      'mainTitle': 'Discover Strategies',
      'data': [
        {
          'title': "Double Top Without Dip",
          'description':
              "Period max (40, High(-1) ) lower than Period max(4...Read More",
          'buttons': [
            'Nifty 500',
            'Daily',
          ],
          'matches': "77 matches",
          'imageUrl': ''
        },
        {
          'title': "Heikin Ashi Bullish Reversal",
          'description':
              "This scanner identifies stocks in a 5-minutes time f...Read More",
          'buttons': [
            'Nifty 500',
            '5 Min',
          ],
          'imageUrl': 'assets/svg/graph.svg',
          'matches': "49 matches",
        },
        {
          'title': "Momentum",
          'description':
              "Volume(0) higher than Period max(10, Volume(-1) )...Read More",
          'buttons': [
            'Nifty 500',
            '5 Min',
          ],
          'imageUrl': '',
          'matches': "11 matches",
        },
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Strategies",
          style: TextStyle(fontSize: 17, color: appcolors.whiteColor),
        ),
        actions: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(right: 10),
                padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: appcolors.appColor)),
                child: Text(
                  "Create Scanner",
                  style: TextStyle(fontSize: 10, color: appcolors.whiteColor),
                ),
              ),
            ],
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            const Text(
              "Scan across equities, futures & options based on your conditions. You can run scanners on time frames as low as 1 minute candles.",
              style: TextStyle(color: Color(0xFF808080), fontSize: 12),
            ),
            SizedBox(
              height: 10,
            ),
            for (int i = 0; i < scannersList.length; i++)
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        scannersList[i]['mainTitle'],
                        style: TextStyle(
                            color: appcolors.whiteColor, fontSize: 16),
                      ),
                      const Spacer(),
                      SvgPicture.asset("assets/svg/filter.svg"),
                      SizedBox(
                        width: 10,
                      ),
                      SvgPicture.asset("assets/svg/updown.svg"),
                      SizedBox(
                        width: 10,
                      ),
                      SvgPicture.asset(
                        "assets/svg/search.svg",
                        color: appcolors.whiteColor,
                      ),
                    ],
                  ),
                  for (int j = 0; j < scannersList[i]['data'].length; j++)
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => StrategiesDetailsScreen(
                                      title: scannersList[i]['data'][j]
                                          ['title'],
                                    )));
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 12),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: const Color(0xFF292929))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              scannersList[i]['data'][j]['title'],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: appcolors.whiteColor),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  flex: 5,
                                  child: Text(
                                    scannersList[i]['data'][j]['description'],
                                    style: const TextStyle(
                                        color: Color(0xFF9D9D9D), fontSize: 11),
                                  ),
                                ),
                                Expanded(
                                    child: scannersList[i]['data'][j]
                                                ['imageUrl'] ==
                                            ""
                                        ? Container(
                                            height: 55,
                                            width: 55,
                                          )
                                        : SvgPicture.asset(scannersList[i]
                                            ['data'][j]['imageUrl']))
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                for (int k = 0;
                                    k <
                                        scannersList[i]['data'][j]['buttons']
                                            .length;
                                    k++)
                                  Padding(
                                    padding: const EdgeInsets.only(right: 7),
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 7),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: const Color(0xFF384236)
                                              .withOpacity(0.3),
                                          border: Border.all(
                                              color: const Color(0xFF384236))),
                                      child: Text(
                                        scannersList[i]['data'][j]['buttons']
                                            [k],
                                        style: TextStyle(
                                            color: appcolors.whiteColor,
                                            fontSize: 9),
                                      ),
                                    ),
                                  ),
                                const Spacer(),
                                Text(
                                  scannersList[i]['data'][j]['matches'],
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: appcolors.appColor),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
