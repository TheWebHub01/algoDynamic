import 'package:algodynamic/screens/Bullish%20Swings/bullish_swings_screen.dart';
import 'package:algodynamic/screens/strategies/strategies_buy_sell_screen.dart';
import 'package:algodynamic/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StrategiesDetailsScreen extends StatefulWidget {
  final String title;
  const StrategiesDetailsScreen({super.key, required this.title});

  @override
  State<StrategiesDetailsScreen> createState() =>
      _StrategiesDetailsScreenState();
}

class _StrategiesDetailsScreenState extends State<StrategiesDetailsScreen> {
  bool isSwitched = false;

  List ltpList = [
    {
      'name': "Cumulative Data",
      'W|L': '131| 174',
      'PNL': '1075.58 (+4.24%)',
      'Max DD': '-2.62',
      'Ws': '2.2',
      'Ls': '4.33',
    },
    {
      'name': "APARINDS",
      'W|L': '5 | 12',
      'PNL': '-220.90 (-7.41%)',
      'Max DD': '-2.62',
      'Ws': '2.2',
      'Ls': '4.33',
    },
    {
      'name': "APARINDS",
      'W|L': '131| 174',
      'PNL': '1075.58 (+4.24%)',
      'Max DD': '-2.62',
      'Ws': '2.2',
      'Ls': '4.33',
    },
    {
      'name': "APARINDS",
      'W|L': '5 | 12',
      'PNL': '-220.90 (-7.41%)',
      'Max DD': '-2.62',
      'Ws': '2.2',
      'Ls': '4.33',
    },
    {
      'name': "APARINDS",
      'W|L': '5 | 12',
      'PNL': '1075.58 (+4.24%)',
      'Max DD': '-2.62',
      'Ws': '2.2',
      'Ls': '4.33',
    },
    {
      'name': "APARINDS",
      'W|L': '131| 174',
      'PNL': '1075.58 (+4.24%)',
      'Max DD': '-2.62',
      'Ws': '2.2',
      'Ls': '4.33',
    },
    {
      'name': "APARINDS",
      'W|L': '5 | 12',
      'PNL': '-220.90 (-7.41%)',
      'Max DD': '-2.62',
      'Ws': '2.2',
      'Ls': '4.33',
    },
    {
      'name': "APARINDS",
      'W|L': '5 | 12',
      'PNL': '1075.58 (+4.24%)',
      'Max DD': '-2.62',
      'Ws': '2.2',
      'Ls': '4.33',
    },
    {
      'name': "APARINDS",
      'W|L': '131| 174',
      'PNL': '-220.90 (-7.41%)',
      'Max DD': '-2.62',
      'Ws': '2.2',
      'Ls': '4.33',
    },
    {
      'name': "APARINDS",
      'W|L': '5 | 12',
      'PNL': '1075.58 (+4.24%)',
      'Max DD': '-2.62',
      'Ws': '2.2',
      'Ls': '4.33',
    },
  ];

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
          widget.title,
          style: TextStyle(fontSize: 20, color: appcolors.whiteColor),
        ),
        actions: [
          GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StrategiesBuySellScreen(),
                    ));
              },
              child: SvgPicture.asset("assets/svg/edit.svg")),
          TextButton(
              onPressed: () {},
              child: SvgPicture.asset("assets/svg/more_vert.svg")),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            // Text(
            //   "The strategy intiates a buy position when the price breaks out of WMA resistance and WMA is also in...Read Mre",
            //   style: TextStyle(color: appcolors.greyColor),
            // )

            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  backgroundColor:
                      Colors.transparent, // Transparent to customize everything
                  builder: (context) {
                    return Container(
                      decoration: const BoxDecoration(
                          color: Color(0xFF080808), // Background color
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                          ),
                          border: Border(
                              top: BorderSide(
                            color: Color(0xFF292929), // Background color
                          ))),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 5),
                            Center(
                              child: Text(
                                "Conditions",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: appcolors.whiteColor,
                                ),
                              ),
                            ),
                            const SizedBox(height: 15),
                            Text(
                              "The strategy intiates a buy position when the price breaks out of WMA resistance and WMA is also in higher than Period max (100,High(-81) )",
                              style: TextStyle(
                                fontSize: 14,
                                color: appcolors.whiteColor.withOpacity(0.6),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: const Text(
                "The strategy intiates a buy position when the price breaks out of WMA resistance and WMA is also in...Read Mre",
                style: TextStyle(color: Color(0xFFABABAB), fontSize: 12),
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize
                      .min, // This ensures the Column doesn't try to expand infinitely
                  children: [
                    const SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Backtest Results",
                          style: TextStyle(
                              color: appcolors.whiteColor, fontSize: 16),
                        ),
                        const Spacer(),
                        Column(
                          children: [
                            RichText(
                                text: TextSpan(children: [
                              const TextSpan(
                                  text: "*on capital of",
                                  style: TextStyle(color: Color(0xFF9D9D9D))),
                              TextSpan(
                                  text: "1 Crore",
                                  style: TextStyle(color: appcolors.appColor))
                            ])),
                            Row(
                              children: [
                                const Text('Trading Charges',
                                    style: TextStyle(color: Color(0xFF9D9D9D))),
                                Switch(
                                  value: isSwitched,
                                  onChanged: (value) {
                                    setState(() {
                                      isSwitched = value;
                                    });
                                  },
                                  inactiveTrackColor:
                                      appcolors.whiteColor.withOpacity(0.3),
                                  activeTrackColor: appcolors.whiteColor,
                                  activeColor: appcolors.appColor,
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    Flexible(
                      // Use Flexible instead of Expanded
                      child: ListView.builder(
                        shrinkWrap:
                            true, // Ensures the ListView calculates its height based on children
                        physics:
                            const NeverScrollableScrollPhysics(), // Disable scrolling if nested inside another scrollable
                        itemCount: ltpList.length,
                        itemBuilder: (context, index) {
                          final String pnlString = ltpList[index]['PNL']!;
                          final bool isPositive = !pnlString.contains('-');

                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => BullishSwingsScreen(
                                      positive: isPositive,
                                    ),
                                  ));
                            },
                            child: Container(
                              margin: const EdgeInsets.symmetric(vertical: 7),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 12),
                              decoration: BoxDecoration(
                                color: const Color(0xFF0C0F0B),
                                borderRadius: BorderRadius.circular(11),
                                border:
                                    Border.all(color: const Color(0xFF292929)),
                              ),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            ltpList[index]['name'],
                                            style: TextStyle(
                                                color: appcolors.whiteColor),
                                          ),
                                          const SizedBox(width: 5),
                                          const Text(
                                            'NSE',
                                            style: TextStyle(
                                                color: Color(0xFF9D9D9D),
                                                fontSize: 10),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 9),
                                      Row(
                                        children: [
                                          Text(
                                            isPositive ? "-" : "LTP :",
                                            style: const TextStyle(
                                                fontSize: 12,
                                                color: Color(0xFF9D9D9D)),
                                          ),
                                          const SizedBox(width: 5),
                                          isPositive
                                              ? const Text(
                                                  "-",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Color(0xFF9D9D9D)),
                                                )
                                              : SvgPicture.asset(
                                                  "assets/svg/lock.svg"),
                                        ],
                                      ),
                                      SizedBox(height: 9),
                                      Row(
                                        children: [
                                          const Text(
                                            "W | L",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xFF9D9D9D)),
                                          ),
                                          const SizedBox(width: 5),
                                          Text(
                                            ltpList[index]['W|L'],
                                            style: TextStyle(
                                                color: appcolors.whiteColor),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Row(
                                        children: [
                                          const Text(
                                            "PNL :",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xFF9D9D9D)),
                                          ),
                                          const SizedBox(width: 5),
                                          Text(
                                            pnlString,
                                            style: TextStyle(
                                              color: isPositive
                                                  ? appcolors.appColor
                                                  : const Color(0xffFF3434),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 9),
                                      Row(
                                        children: [
                                          const Text(
                                            "Max DD :",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xFF9D9D9D)),
                                          ),
                                          const SizedBox(width: 5),
                                          Text(
                                            ltpList[index]['Max DD'],
                                            style: TextStyle(
                                                color: appcolors.whiteColor),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 9),
                                      Row(
                                        children: [
                                          const Text(
                                            "Ws:",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xFF9D9D9D)),
                                          ),
                                          const SizedBox(width: 5),
                                          Text(
                                            ltpList[index]['Ws'],
                                            style: TextStyle(
                                                color: appcolors.whiteColor),
                                          ),
                                          const SizedBox(width: 10),
                                          const Text(
                                            "Ls:",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xFF9D9D9D)),
                                          ),
                                          const SizedBox(width: 5),
                                          Text(
                                            ltpList[index]['Ls'],
                                            style: TextStyle(
                                                color: appcolors.whiteColor),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              padding: const EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: appcolors.appColor),
              child: Center(
                child: Text(
                  "Deploy",
                  style: TextStyle(fontSize: 16, color: appcolors.blackColor),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class ValueColorWidget extends StatelessWidget {
  final String valueWithPercentage;

  ValueColorWidget({required this.valueWithPercentage});

  @override
  Widget build(BuildContext context) {
    // Determine the sign of the value
    bool isPositive = valueWithPercentage.contains('+');

    // Set the color based on the sign
    Color valueColor = isPositive ? Colors.green : Colors.red;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Value Color Example"),
      ),
      body: Center(
        child: Text(
          valueWithPercentage,
          style: TextStyle(
            color: valueColor, // Green for positive, red for negative
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
