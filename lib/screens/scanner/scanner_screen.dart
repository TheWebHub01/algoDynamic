import 'package:algodynamic/screens/home/home_detail_screen.dart';
import 'package:algodynamic/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ScannerScreen extends StatefulWidget {
  const ScannerScreen({super.key});

  @override
  State<ScannerScreen> createState() => _ScannerScreenState();
}

class _ScannerScreenState extends State<ScannerScreen> {
  List scannersList = [
    {
      'mainTitle': 'Discover Scanners',
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
  List filtersIndexList = [
    'Nifty 50',
    'Nifty 100',
    'Nifty 500',
    'Nifty Weekly',
    'Select All'
  ];
  List filtersTimeFrameList = [
    '1 Min',
    '3 Min',
    '5 Min',
    '10 Min',
    '15 Min',
    '30 Min',
    '1 Hour',
    '1 Day',
    'Select All'
  ];
  List filtersChartTypeList = [
    'Candlestick',
    'Heikin-Ashi',
    'Select All',
  ];
  int filtersIndex = 0;
  int filtersTimeIndex = 0;
  int filtersChartTypeIndex = 0;
  List sortingList = [
    {'title': "Name", 'type': 'A to Z'},
    {'title': "Name", 'type': 'Z to A'},
    {'title': "Time Frame", 'type': 'Low to High'},
    {'title': "Time Frame", 'type': 'High to Low'},
    {'title': "Matches", 'type': 'Low to High'},
    {'title': "Matches", 'type': 'High to Low'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Scanners",
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
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Scan across equities, futures & options based on your conditions. You can run scanners on time frames as low as 1 minute candles.",
              style: TextStyle(color: Color(0xFF808080), fontSize: 12),
            ),
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
                      GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              backgroundColor: Colors
                                  .transparent, // Transparent to customize everything
                              builder: (context) {
                                return StatefulBuilder(
                                  builder: (context, setStates) => Container(
                                    decoration: const BoxDecoration(
                                        color: Color(
                                            0xFF080808), // Background color
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(40),
                                          topRight: Radius.circular(40),
                                        ),
                                        border: Border(
                                            top: BorderSide(
                                          color: Color(
                                              0xFF292929), // Background color
                                        ))),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const SizedBox(height: 5),
                                          Center(
                                              child: Text(
                                            "Filters",
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: appcolors.whiteColor,
                                            ),
                                          )),
                                          const SizedBox(height: 20),
                                          Row(
                                            children: [
                                              Text(
                                                "Favorite",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color:
                                                        appcolors.whiteColor),
                                              ),
                                              const Spacer(),
                                              Radio<int>(
                                                activeColor: appcolors.appColor,
                                                value:
                                                    1, // Replace with the value for the radio button
                                                groupValue:
                                                    1, // The value of the selected radio button in the group
                                                onChanged: (int? newValue) {},
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "Index",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color:
                                                        appcolors.whiteColor),
                                              ),
                                              const Spacer(),
                                              SvgPicture.asset(
                                                  "assets/svg/drop-down.svg")
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Wrap(
                                            children: [
                                              for (int i = 0;
                                                  i < filtersIndexList.length;
                                                  i++)
                                                GestureDetector(
                                                  onTap: () {
                                                    setStates(() {
                                                      filtersIndex = i;
                                                    });
                                                  },
                                                  child: Container(
                                                    margin: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 5,
                                                        vertical: 5),
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 10,
                                                        vertical: 7),
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                      border: Border.all(
                                                          color: filtersIndex == i
                                                              ? appcolors
                                                                  .appColor
                                                              : const Color(
                                                                  0xFF292929)),
                                                    ),
                                                    child: Text(
                                                      filtersIndexList[i],
                                                      style: TextStyle(
                                                          color: appcolors
                                                              .whiteColor,
                                                          fontSize: 10),
                                                    ),
                                                  ),
                                                )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "Time Frame",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color:
                                                        appcolors.whiteColor),
                                              ),
                                              const Spacer(),
                                              SvgPicture.asset(
                                                  "assets/svg/drop-down.svg")
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Wrap(
                                            // spacing: 10, // Space between items

                                            children: [
                                              for (int i = 0;
                                                  i <
                                                      filtersTimeFrameList
                                                          .length;
                                                  i++)
                                                GestureDetector(
                                                  onTap: () {
                                                    setStates(() {
                                                      filtersTimeIndex = i;
                                                    });
                                                  },
                                                  child: Container(
                                                    margin: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 5,
                                                        vertical: 5),
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 10,
                                                        vertical: 7),
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                      border: Border.all(
                                                          color:
                                                              filtersTimeIndex ==
                                                                      i
                                                                  ? appcolors
                                                                      .appColor
                                                                  : const Color(
                                                                      0xFF292929)),
                                                    ),
                                                    child: Text(
                                                      filtersTimeFrameList[i],
                                                      style: TextStyle(
                                                          color: appcolors
                                                              .whiteColor,
                                                          fontSize: 10),
                                                    ),
                                                  ),
                                                )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "Chart Type",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color:
                                                        appcolors.whiteColor),
                                              ),
                                              const Spacer(),
                                              SvgPicture.asset(
                                                  "assets/svg/drop-down.svg")
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Wrap(
                                            children: [
                                              for (int i = 0;
                                                  i <
                                                      filtersChartTypeList
                                                          .length;
                                                  i++)
                                                GestureDetector(
                                                  onTap: () {
                                                    setStates(() {
                                                      filtersChartTypeIndex = i;
                                                    });
                                                  },
                                                  child: Container(
                                                    margin: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 5,
                                                        vertical: 5),
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 10,
                                                        vertical: 7),
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                      border: Border.all(
                                                          color:
                                                              filtersChartTypeIndex ==
                                                                      i
                                                                  ? appcolors
                                                                      .appColor
                                                                  : const Color(
                                                                      0xFF292929)),
                                                    ),
                                                    child: Text(
                                                      filtersChartTypeList[i],
                                                      style: TextStyle(
                                                          color: appcolors
                                                              .whiteColor,
                                                          fontSize: 10),
                                                    ),
                                                  ),
                                                )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: SvgPicture.asset("assets/svg/filter.svg")),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              backgroundColor: Colors
                                  .transparent, // Transparent to customize everything
                              builder: (context) {
                                return StatefulBuilder(
                                  builder: (context, setStates) => Container(
                                    decoration: const BoxDecoration(
                                        color: Color(
                                            0xFF080808), // Background color
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(40),
                                          topRight: Radius.circular(40),
                                        ),
                                        border: Border(
                                            top: BorderSide(
                                          color: Color(
                                              0xFF292929), // Background color
                                        ))),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const SizedBox(height: 5),
                                          Center(
                                              child: Text(
                                            "Sort",
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: appcolors.whiteColor,
                                            ),
                                          )),
                                          const SizedBox(height: 20),
                                          for (int i = 0;
                                              i < sortingList.length;
                                              i++)
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 10),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    sortingList[i]['title'],
                                                    style: TextStyle(
                                                        color: appcolors
                                                            .whiteColor,
                                                        fontSize: 15),
                                                  ),
                                                  const SizedBox(
                                                    width: 15,
                                                  ),
                                                  Text(
                                                    sortingList[i]['type'],
                                                    style: const TextStyle(
                                                        color:
                                                            Color(0xFFC0C0C0),
                                                        fontSize: 15),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          const SizedBox(
                                            height: 10,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: SvgPicture.asset("assets/svg/updown.svg")),
                      const SizedBox(
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
