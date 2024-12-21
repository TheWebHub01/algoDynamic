import 'package:algodynamic/screens/home/home_detail_screen.dart';
import 'package:algodynamic/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List scannersList = [
    {
      'mainTitle': 'Discover Scanners',
      'data': [
        {
          'title': "Range Breakouts",
          'description':
              "( High(0) - Low(0)) higher than Period max(10, (... Read More",
          'longDescription':
              "( High(0) - Low(0)) higher than Period max(10, ( High(-1) - Low(-1) )  )",
          'buttons': [
            'Nifty 500',
            'Daily',
          ],
          'matches': "168 matches",
          'imageUrl': ''
        },
        {
          'title': "Short Term Bearish",
          'description':
              "The scanner identifies for stocks whose ADX indica... Read More",
          'longDescription':
              "The scanner identifies for stocks whose ADX indicator is increasing over the past 5 candles while also ensuring that the current ADX(14) value is above 24 and the Supertrend is Red checked on a 5 minutes chart, indicating potential Bearishness.",
          'buttons': [
            'Nifty 500',
            '5 Min',
          ],
          'imageUrl': 'assets/svg/graph.svg',
          'matches': "156 matches",
        }
      ]
    },
    {
      'mainTitle': 'Discover Strategies',
      'data': [
        {
          'title': "Weighted MA Bullish Trend",
          'description':
              "The strategy initiates a buy position when the price breaks...Read More",
          'longDescription':
              "The strategy initiates a buy position when the price breaks out of WMA resistance and WMA is also indicating bullishness. The strategy is suitable for Bullish Trending Markets",
          'buttons': [
            'Long',
            '15 Min',
          ],
          'matches': "52 Stocks",
          'imageUrl': 'assets/svg/graph_2.svg',
        },
        {
          'title': "3 Positive Closes",
          'description':
              "The strategy takes a buy position when the consecutive can...Read More",
          'longDescription':
              "The strategy takes a buy position when the consecutive candles close higher than the previous candle's close. Position is taken only when the momentum is positive. The strategy is suitable for bullish trending markets.",
          'buttons': [
            'Long',
            '5 Min',
          ],
          'imageUrl': 'assets/svg/graph_3.svg',
          'matches': "82 Stocks",
        }
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "AlgoDynamic",
          style: TextStyle(color: appcolors.whiteColor),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              "Login",
              style: TextStyle(color: Color(0xFFDADADA), fontSize: 13),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
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
                        Text(
                          "View ALl",
                          style: TextStyle(
                              color: appcolors.whiteColor, fontSize: 10),
                        ),
                      ],
                    ),
                    for (int j = 0; j < scannersList[i]['data'].length; j++)
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeDetailScreen(
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
                              border:
                                  Border.all(color: const Color(0xFF292929))),
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
                                    child: GestureDetector(
                                      onTap: () {
                                        showModalBottomSheet(
                                          context: context,
                                          backgroundColor: Colors
                                              .transparent, // Transparent to customize everything
                                          builder: (context) {
                                            return Container(
                                              decoration: const BoxDecoration(
                                                  color: Color(
                                                      0xFF080808), // Background color
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(40),
                                                    topRight:
                                                        Radius.circular(40),
                                                  ),
                                                  border: Border(
                                                      top: BorderSide(
                                                    color: Color(
                                                        0xFF292929), // Background color
                                                  ))),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(16.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    const SizedBox(height: 5),
                                                    Center(
                                                      child: Text(
                                                        scannersList[i]['data']
                                                            [j]['title'],
                                                        style: TextStyle(
                                                          fontSize: 20,
                                                          color: appcolors
                                                              .whiteColor,
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(height: 15),
                                                    Text(
                                                      scannersList[i]['data'][j]
                                                          ['longDescription'],
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        color: appcolors
                                                            .whiteColor
                                                            .withOpacity(0.6),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                      child: Text(
                                        scannersList[i]['data'][j]
                                            ['description'],
                                        style: const TextStyle(
                                            color: Color(0xFF9D9D9D),
                                            fontSize: 11),
                                      ),
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
                                                color:
                                                    const Color(0xFF384236))),
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
              const SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}
