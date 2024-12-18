import 'package:algodynamic/constants/custom_dropdown/custom_drop_down.dart';
import 'package:algodynamic/screens/home/condition_edit_screen.dart';
import 'package:algodynamic/screens/home/scan_on_screen.dart';
import 'package:algodynamic/screens/home/technical_screen.dart';
import 'package:algodynamic/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeDetailScreen extends StatefulWidget {
  final String title;
  const HomeDetailScreen({super.key, required this.title});

  @override
  State<HomeDetailScreen> createState() => _HomeDetailScreenState();
}

class _HomeDetailScreenState extends State<HomeDetailScreen> {
  List ltpList = [
    {
      'name': "ANANTRAJ",
      'price': '1600271',
    },
    {
      'name': "APARINDS",
      'price': '42265',
    },
    {
      'name': "APARINDS",
      'price': '42265',
    },
    {
      'name': "APARINDS",
      'price': '42265',
    },
    {
      'name': "APARINDS",
      'price': '42265',
    },
    {
      'name': "APARINDS",
      'price': '42265',
    },
    {
      'name': "APARINDS",
      'price': '42265',
    },
    {
      'name': "APARINDS",
      'price': '42265',
    },
    {
      'name': "APARINDS",
      'price': '42265',
    },
    {
      'name': "APARINDS",
      'price': '42265',
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
          style: TextStyle(fontSize: 18, color: appcolors.whiteColor),
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: SvgPicture.asset("assets/svg/more_vert.svg"))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Scan On",
                      style:
                          TextStyle(fontSize: 15, color: appcolors.whiteColor),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    customDropDown(
                      "Nifty 100",
                      () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ScanOnScreen()));
                      },
                    ),
                    const SizedBox(
                      height: 20,
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
                                "Nifty 100",
                                () {},
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
                                () {},
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          "Conditions",
                          style: TextStyle(
                              color: appcolors.whiteColor, fontSize: 15),
                        ),
                        const Spacer(),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ConditionEditScreen(
                                            title: widget.title,
                                          )));
                            },
                            child: SvgPicture.asset("assets/svg/edit.svg"))
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          backgroundColor: Colors
                              .transparent, // Transparent to customize everything
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
                                    color:
                                        Color(0xFF292929), // Background color
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
                                      "Period max(40, High(-1) ) lower than Period max (40, High(-41) ) * 1.02 and Period max(40, High(-1) ) higher than Period max(40, High(-41) ) * 0.98 and Period max (40, High(-41) ) higher than Period max (100,High(-81) )",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: appcolors.whiteColor
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
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 15),
                        decoration: BoxDecoration(
                            color: const Color(0xFF0E0E0E),
                            borderRadius: BorderRadius.circular(11),
                            border: Border.all(color: const Color(0xFF292929))),
                        child: const Text(
                          "Period Max(40, High(-1) ) lower than Period max(40, High(-41) ) *1.02 and Period max(40, High(-1) ) higher tha...Read More",
                          style:
                              TextStyle(color: Color(0xFFABABAB), fontSize: 12),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Description",
                      style:
                          TextStyle(color: appcolors.whiteColor, fontSize: 15),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      maxLines: 4,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0xFF0E0E0E),
                          hintText: "Add description for scanner",
                          hintStyle: const TextStyle(
                              color: Color(0xFFABABAB), fontSize: 12),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide:
                                  const BorderSide(color: Color(0xFF292929))),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide:
                                  const BorderSide(color: Color(0xFF292929))),
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide:
                                  const BorderSide(color: Color(0xFF292929))),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide:
                                  const BorderSide(color: Color(0xFF292929)))),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          "Scan Results",
                          style: TextStyle(
                              color: appcolors.whiteColor, fontSize: 15),
                        ),
                        const Spacer(),
                        Text(
                          "74 Matches",
                          style: TextStyle(
                              color: appcolors.appColor, fontSize: 13),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    const Text(
                      "Last ran at 9:41 AM 27/11/2024",
                      style: TextStyle(color: Color(0xFFABABAB), fontSize: 14),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 45,
                            child: TextField(
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: const Color(0xFF0C0F0B),
                                  contentPadding:
                                      const EdgeInsets.only(left: 10),
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SvgPicture.asset(
                                        "assets/svg/search.svg"),
                                  ),
                                  hintText: "Search Scanner",
                                  hintStyle: const TextStyle(
                                      color: Color(0xFFABABAB), fontSize: 12),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(11),
                                      borderSide: const BorderSide(
                                          color: Color(0xFF292929))),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(11),
                                      borderSide: const BorderSide(
                                          color: Color(0xFF292929))),
                                  disabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(11),
                                      borderSide: const BorderSide(
                                          color: Color(0xFF292929))),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(11),
                                      borderSide: const BorderSide(
                                          color: Color(0xFF292929)))),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        Container(
                            height: 45,
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            decoration: BoxDecoration(
                                color: const Color(0xFF0C0F0B),
                                borderRadius: BorderRadius.circular(11),
                                border:
                                    Border.all(color: const Color(0xFF292929))),
                            child: SvgPicture.asset("assets/svg/updown.svg"))
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    for (int i = 0; i < ltpList.length; i++)
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            backgroundColor: Colors
                                .transparent, // Transparent to customize everything
                            builder: (context) {
                              return Container(
                                decoration: const BoxDecoration(
                                    color:
                                        Color(0xFF080808), // Background color
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(40),
                                      topRight: Radius.circular(40),
                                    ),
                                    border: Border(
                                        top: BorderSide(
                                      color:
                                          Color(0xFF292929), // Background color
                                    ))),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(height: 5),
                                      Center(
                                        child: Row(
                                          children: [
                                            const Spacer(),
                                            const Spacer(),
                                            Text(
                                              ltpList[i]['name'],
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: appcolors.whiteColor,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            const Text(
                                              "NSE",
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: Color(0xFF9D9D9D),
                                              ),
                                            ),
                                            const Spacer(),
                                            SvgPicture.asset(
                                                "assets/svg/s.svg"),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            SvgPicture.asset(
                                                "assets/svg/b.svg"),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      TechnicalScreen(
                                                        title: ltpList[i]
                                                            ['name'],
                                                      )));
                                        },
                                        child: Row(
                                          children: [
                                            SvgPicture.asset(
                                                "assets/svg/technical_graph.svg"),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              "See Technicals",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: appcolors.whiteColor),
                                            )
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                              "assets/svg/chart_graph.svg"),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "See Chart",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: appcolors.whiteColor),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 7),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 12),
                          decoration: BoxDecoration(
                              color: const Color(0xFF0C0F0B),
                              borderRadius: BorderRadius.circular(11),
                              border:
                                  Border.all(color: const Color(0xFF292929))),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        ltpList[i]['name'],
                                        style: TextStyle(
                                            color: appcolors.whiteColor),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Text(
                                        'NSE',
                                        style: TextStyle(
                                            color: Color(0xFF9D9D9D),
                                            fontSize: 10),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  Row(
                                    children: [
                                      const Text(
                                        "LTP :",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xFF9D9D9D)),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      SvgPicture.asset("assets/svg/lock.svg")
                                    ],
                                  )
                                ],
                              ),
                              const Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  const Text(
                                    "volume",
                                    style: TextStyle(
                                        fontSize: 10, color: Color(0xFF9D9D9D)),
                                  ),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    ltpList[i]['price'],
                                    style: const TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFF0C0F0B),
                          border: Border.all(color: appcolors.appColor)),
                      child: Row(
                        children: [
                          Text(
                            "View More",
                            style: TextStyle(
                                fontSize: 15, color: appcolors.whiteColor),
                          ),
                          const Spacer(),
                          SvgPicture.asset("assets/svg/next.svg")
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: appcolors.appColor),
                      color: const Color(0xFF1D2916)),
                  child: Center(
                    child: Text(
                      "Take Live",
                      style:
                          TextStyle(fontSize: 16, color: appcolors.whiteColor),
                    ),
                  ),
                )),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFF95E362)),
                  child: Center(
                    child: Text(
                      "Save & Run",
                      style:
                          TextStyle(fontSize: 16, color: appcolors.blackColor),
                    ),
                  ),
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
