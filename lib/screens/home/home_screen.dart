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
                                    child: Text(
                                      scannersList[i]['data'][j]['description'],
                                      style: const TextStyle(
                                          color: Color(0xFF9D9D9D),
                                          fontSize: 11),
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
