import 'package:algodynamic/screens/home/cnc_screen.dart';
import 'package:algodynamic/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PositionHomeScreen extends StatefulWidget {
  const PositionHomeScreen({super.key});

  @override
  State<PositionHomeScreen> createState() => _PositionHomeScreenState();
}

class _PositionHomeScreenState extends State<PositionHomeScreen> {
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
            "Positions",
            style: TextStyle(fontSize: 17, color: appcolors.whiteColor),
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
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
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        SvgPicture.asset(
                                            "assets/svg/details.svg"),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Text(
                                          "Details",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: appcolors.whiteColor),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 25,
                                    ),
                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        SvgPicture.asset("assets/svg/exit.svg"),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Text(
                                          "Exit",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: appcolors.whiteColor),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 30,
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
                            horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                            color: const Color(0xFF0E0E0E),
                            borderRadius: BorderRadius.circular(11),
                            border: Border.all(color: const Color(0xFF292929))),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "VMA",
                                  style: TextStyle(color: appcolors.whiteColor),
                                ),
                                const Spacer(),
                                Text(
                                  "₹ -450.30",
                                  style: TextStyle(
                                      fontSize: 10, color: appcolors.redColor),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Row(
                              children: [
                                Text(
                                  "₹ 113.35",
                                  style: TextStyle(
                                      color: appcolors.whiteColor,
                                      fontSize: 10),
                                ),
                                const Text(
                                  "(+43.33%)",
                                  style: TextStyle(
                                      color: Color(0xFF9D9D9D), fontSize: 6),
                                ),
                                const Spacer(),
                                Text(
                                  "1.75%",
                                  style: TextStyle(
                                      fontSize: 10, color: appcolors.appColor),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Row(
                              children: [
                                const Text(
                                  "Qty:",
                                  style: TextStyle(
                                      color: Color(0xFF9D9D9D), fontSize: 9),
                                ),
                                Text(
                                  "-190",
                                  style: TextStyle(
                                      color: appcolors.whiteColor,
                                      fontSize: 12),
                                ),
                                const Text(
                                  "Avg Price:",
                                  style: TextStyle(
                                      color: Color(0xFF9D9D9D), fontSize: 9),
                                ),
                                Text(
                                  "110.00",
                                  style: TextStyle(
                                      color: appcolors.whiteColor,
                                      fontSize: 12),
                                ),
                                const Spacer(),
                                GestureDetector(
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
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(40),
                                                topRight: Radius.circular(40),
                                              ),
                                              border: Border(
                                                  top: BorderSide(
                                                color: Color(
                                                    0xFF292929), // Background color
                                              ))),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(40),
                                              topRight: Radius.circular(40),
                                            ),
                                            child: SingleChildScrollView(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(16.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Text(
                                                          "CNC",
                                                          style: TextStyle(
                                                              fontSize: 16,
                                                              color: appcolors
                                                                  .redColor),
                                                        ),
                                                        Text(
                                                          "VMM",
                                                          style: TextStyle(
                                                              fontSize: 16,
                                                              color: appcolors
                                                                  .whiteColor),
                                                        ),
                                                        const Text(
                                                          "BSE",
                                                          style: TextStyle(
                                                              fontSize: 10,
                                                              color: Color(
                                                                  0xFF9D9D9D)),
                                                        ),
                                                        const Spacer(),
                                                        GestureDetector(
                                                          onTap: () {
                                                            Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                    builder:
                                                                        (context) =>
                                                                            CncScreen()));
                                                          },
                                                          child: Container(
                                                            padding:
                                                                const EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                        15,
                                                                    vertical:
                                                                        5),
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            15),
                                                                color: const Color(
                                                                    0xFF2A3225),
                                                                border: Border.all(
                                                                    color: appcolors
                                                                        .appColor)),
                                                            child: Text(
                                                              "Open",
                                                              style: TextStyle(
                                                                  fontSize: 9,
                                                                  color: appcolors
                                                                      .appColor),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                      height: 15,
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      width: double.infinity,
                                                      color: const Color(
                                                          0xFF292929),
                                                    ),
                                                    const SizedBox(
                                                      height: 15,
                                                    ),
                                                    Row(
                                                      children: [
                                                        const Text(
                                                          "Net Quantity",
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Color(
                                                                  0xFFABABAB)),
                                                        ),
                                                        const Spacer(),
                                                        Text(
                                                          "-190",
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: appcolors
                                                                  .whiteColor),
                                                        )
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                      height: 5,
                                                    ),
                                                    Row(
                                                      children: [
                                                        const Text(
                                                          "Carry forward qty.",
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Color(
                                                                  0xFFABABAB)),
                                                        ),
                                                        const Spacer(),
                                                        Text(
                                                          "0",
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: appcolors
                                                                  .whiteColor),
                                                        )
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                      height: 5,
                                                    ),
                                                    Row(
                                                      children: [
                                                        const Text(
                                                          "Avg. Price",
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Color(
                                                                  0xFFABABAB)),
                                                        ),
                                                        const Spacer(),
                                                        Text(
                                                          "110.00",
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: appcolors
                                                                  .whiteColor),
                                                        )
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                      height: 5,
                                                    ),
                                                    Row(
                                                      children: [
                                                        const Text(
                                                          "Last Price",
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Color(
                                                                  0xFFABABAB)),
                                                        ),
                                                        const Spacer(),
                                                        Text(
                                                          "111.85",
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: appcolors
                                                                  .whiteColor),
                                                        )
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                      height: 5,
                                                    ),
                                                    Row(
                                                      children: [
                                                        const Text(
                                                          "Last Close Price",
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Color(
                                                                  0xFFABABAB)),
                                                        ),
                                                        const Spacer(),
                                                        Text(
                                                          "78.00",
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: appcolors
                                                                  .whiteColor),
                                                        )
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                      height: 5,
                                                    ),
                                                    Row(
                                                      children: [
                                                        const Text(
                                                          "P&L",
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Color(
                                                                  0xFFABABAB)),
                                                        ),
                                                        const Spacer(),
                                                        Text(
                                                          "-351.50",
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: appcolors
                                                                  .whiteColor),
                                                        )
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                      height: 5,
                                                    ),
                                                    Row(
                                                      children: [
                                                        const Text(
                                                          "Day’s P&L",
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Color(
                                                                  0xFFABABAB)),
                                                        ),
                                                        const Spacer(),
                                                        Text(
                                                          "20900.00",
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: appcolors
                                                                  .whiteColor),
                                                        )
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                      height: 5,
                                                    ),
                                                    Row(
                                                      children: [
                                                        const Text(
                                                          "Product",
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Color(
                                                                  0xFFABABAB)),
                                                        ),
                                                        const Spacer(),
                                                        Text(
                                                          "CNC",
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: appcolors
                                                                  .whiteColor),
                                                        )
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      width: double.infinity,
                                                      color: const Color(
                                                          0xFF292929),
                                                    ),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                      "Buys",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: appcolors
                                                              .whiteColor),
                                                    ),
                                                    Row(
                                                      children: [
                                                        const Text(
                                                          "Quantity",
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Color(
                                                                  0xFFABABAB)),
                                                        ),
                                                        const Spacer(),
                                                        Text(
                                                          "0",
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: appcolors
                                                                  .whiteColor),
                                                        )
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                      height: 5,
                                                    ),
                                                    Row(
                                                      children: [
                                                        const Text(
                                                          "Price",
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Color(
                                                                  0xFFABABAB)),
                                                        ),
                                                        const Spacer(),
                                                        Text(
                                                          "0.00",
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: appcolors
                                                                  .whiteColor),
                                                        )
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                      height: 5,
                                                    ),
                                                    Row(
                                                      children: [
                                                        const Text(
                                                          "Value",
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Color(
                                                                  0xFFABABAB)),
                                                        ),
                                                        const Spacer(),
                                                        Text(
                                                          "0.00",
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: appcolors
                                                                  .whiteColor),
                                                        )
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    Container(
                                                      height: 1,
                                                      width: double.infinity,
                                                      color: const Color(
                                                          0xFF292929),
                                                    ),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                      "Sells",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: appcolors
                                                              .whiteColor),
                                                    ),
                                                    Row(
                                                      children: [
                                                        const Text(
                                                          "Quantity",
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Color(
                                                                  0xFFABABAB)),
                                                        ),
                                                        const Spacer(),
                                                        Text(
                                                          "190",
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: appcolors
                                                                  .whiteColor),
                                                        )
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                      height: 5,
                                                    ),
                                                    Row(
                                                      children: [
                                                        const Text(
                                                          "Price",
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Color(
                                                                  0xFFABABAB)),
                                                        ),
                                                        const Spacer(),
                                                        Text(
                                                          "110.00",
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: appcolors
                                                                  .whiteColor),
                                                        )
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                      height: 5,
                                                    ),
                                                    Row(
                                                      children: [
                                                        const Text(
                                                          "Value",
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Color(
                                                                  0xFFABABAB)),
                                                        ),
                                                        const Spacer(),
                                                        Text(
                                                          "20900.00",
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: appcolors
                                                                  .whiteColor),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    );
                               
                               
                               
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 5),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: const Color(0xFF2A3225),
                                        border: Border.all(
                                            color: appcolors.appColor)),
                                    child: Text(
                                      "CNC",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: appcolors.appColor),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Total PNL",
                  style: TextStyle(fontSize: 16, color: appcolors.whiteColor),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "₹ -285.20",
                  style: TextStyle(fontSize: 16, color: appcolors.redColor),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
