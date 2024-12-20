import 'dart:ui';

import 'package:algodynamic/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyScannersWidget extends StatefulWidget {
  @override
  _MyScannersWidgetState createState() => _MyScannersWidgetState();
}

class _MyScannersWidgetState extends State<MyScannersWidget> {
  int? selectedIndex;
  double currentProgress = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: scannersWidget());
  }

  Column scannersWidget() {
    double totalWidth =
        MediaQuery.of(context).size.width - 40; // Adjust the 60 if necessary

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(
              "Popular Scanners",
              style: TextStyle(color: appcolors.whiteColor),
            ),
            const Spacer(),
            Text(
              "View all",
              style: TextStyle(color: appcolors.appColor, fontSize: 10),
            ),
            const SizedBox(
              width: 5,
            ),
            SvgPicture.asset("assets/svg/next2.svg")
          ],
        ),
        GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisExtent: 190,
            crossAxisSpacing: 10,
          ),
          physics: const NeverScrollableScrollPhysics(),
          clipBehavior: Clip.none,
          itemCount: cardsData.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            bool isSelected = selectedIndex == index;
            return GestureDetector(
              onTap: () {
                setState(() {
                  if (isSelected) {
                    selectedIndex = null;
                  } else {
                    selectedIndex = index;
                  }
                });
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    color: Colors.transparent,
                    padding: const EdgeInsets.only(
                      bottom: 20,
                      top: 10,
                    ),
                    child: Stack(alignment: Alignment.center, children: [
                      Container(
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: const Color(0xff0F130D).withOpacity(0.2),
                            border: Border.all(
                                color: isSelected
                                    ? appcolors.appColor
                                    : const Color(0xFF292929))),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 30, horizontal: 10),
                          child: Column(
                            children: [
                              SvgPicture.asset(cardsData[index]["image"]!),
                              const SizedBox(height: 10),
                              Text(
                                cardsData[index]["title"]!,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: isSelected
                                        ? appcolors.appColor
                                        : appcolors.whiteColor,
                                    fontSize: 11),
                              )
                            ],
                          ),
                        ),
                      ),
                    ]),
                  ),
                  Positioned(
                    bottom: 5,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      decoration: BoxDecoration(
                          color: isSelected
                              ? appcolors.appColor
                              : const Color(0xff0F130D),
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: const Color(0xFF292929))),
                      child: Text(
                        cardsData[index]["time"]!,
                        style: TextStyle(
                            color: isSelected
                                ? appcolors.blackColor
                                : appcolors.whiteColor,
                            fontSize: 11),
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
        const SizedBox(height: 15),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Scan Results",
                  style: TextStyle(fontSize: 14, color: appcolors.whiteColor),
                ),
                Text(
                  "Last ran at 9:10 AM 28/11/2024",
                  style: TextStyle(fontSize: 12, color: appcolors.whiteColor),
                ),
              ],
            ),
            Text(
              "View Conditions",
              style: TextStyle(fontSize: 12, color: appcolors.appColor),
            ),
          ],
        ),
        const Divider(
          color: Color(0xff151515),
          thickness: 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Symbol",
              style: TextStyle(fontSize: 16, color: appcolors.greyColor),
            ),
            Text(
              "High / Low",
              style: TextStyle(fontSize: 16, color: appcolors.greyColor),
            ),
          ],
        ),
        const Divider(color: Color(0xff151515), thickness: 2),
        ListView.builder(
          itemCount: symbollist.length,
          shrinkWrap: true,
          clipBehavior: Clip.none,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, i) {
            final String pnlString = symbollist[i]['persntage']!;
            final bool isPositive = !pnlString.contains('-');
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              margin: const EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xff292929)),
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xFF384236).withOpacity(0.3),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "${symbollist[i]['title']}",
                              style: TextStyle(
                                  color: appcolors.whiteColor, fontSize: 14),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              "${symbollist[i]['symbol']}",
                              style: TextStyle(
                                  color: appcolors.greyColor, fontSize: 10),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "${symbollist[i]['price']}",
                              style: TextStyle(color: appcolors.whiteColor),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              "${symbollist[i]['persntage']}",
                              style: TextStyle(
                                  color: isPositive
                                      ? appcolors.appColor
                                      : const Color(0xffFF3434)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Column(
                    children: [
                      CustomProgressBar(
                        progress: symbollist[i]['value'],
                      ),
                      Stack(
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "L",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                              Text(
                                "H",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ],
                          ),
                          Positioned(
                            left: totalWidth * symbollist[0]['value'],
                            top: 0,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: SvgPicture.asset(
                                "assets/svg/pointer.svg",
                                // height: 20,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
                ],
              ),
            );
          },
        ),
        Row(
          children: [
            Text(
              "Showing 10 of 208",
              style: TextStyle(color: appcolors.whiteColor, fontSize: 14),
            ),
            const Spacer(),
            Text(
              "View all",
              style: TextStyle(color: appcolors.appColor, fontSize: 10),
            ),
            const SizedBox(
              width: 5,
            ),
            SvgPicture.asset("assets/svg/next2.svg")
          ],
        ),
        Text(
          "View all 208 Results >>",
          style: TextStyle(color: appcolors.appColor, fontSize: 16),
        )
      ],
    );
  }
}

class CustomProgressBar extends StatelessWidget {
  final double progress;

  const CustomProgressBar({required this.progress});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 200,
          height: 15,
          decoration: BoxDecoration(
            color: const Color(0xff0C0F0B),
            border: Border.all(color: appcolors.appColor),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Positioned(
          left: 0,
          child: Container(
            width: 200 * progress,
            height: 15,
            decoration: BoxDecoration(
              color: appcolors.appColor,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        Positioned(
          left: 200 * progress - 10,
          top: 25,
          child: CustomPaint(
            size: const Size(20, 10),
            painter: TrianglePainter(),
          ),
        ),
      ],
    );
  }
}

class TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final path = Path()
      ..moveTo(size.width / 2, 0) // Top point
      ..lineTo(0, size.height) // Bottom-left point
      ..lineTo(size.width, size.height) // Bottom-right point
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

final List<Map<String, dynamic>> symbollist = [
  {
    "title": "3600NE",
    "symbol": "NSE",
    'price': "1138.75",
    'persntage': "(+0.60%)",
    'value': 0.2,
  },
  {
    "title": "3600NE",
    "symbol": "NSE",
    'price': "1138.75",
    'persntage': "(-0.30%)",
    'value': 0.3,
  },
  {
    "title": "3600NE",
    "symbol": "NSE",
    'price': "1138.75",
    'persntage': "(+0.030%)",
    'value': 0.4,
  },
];

final List<Map<String, String>> cardsData = [
  {
    "title": "Extremely\nBullish Daily",
    "time": "1 Day",
    'image': "assets/svg/graph.svg"
  },
  {
    "title": "Bearish SMA\nAnd RSI",
    "time": "5 Min",
    'image': "assets/svg/graph_4.svg"
  },
  {
    "title": "Possible\nUptrend",
    "time": "1 Day",
    'image': "assets/svg/graph_4.svg"
  },
  {
    "title": "Previous Day\nHigh Breakout",
    "time": "1 Hour",
    'image': "assets/svg/graph_4.svg"
  },
  {
    "title": "Falling SMA\n50",
    "time": "1 Min",
    'image': "assets/svg/graph_4.svg"
  },
  {
    "title": "Volatility\nExpansion",
    "time": "5 Min",
    'image': "assets/svg/graph_4.svg"
  },
];
