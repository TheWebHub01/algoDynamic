import 'package:algodynamic/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CncScreen extends StatefulWidget {
  const CncScreen({super.key});

  @override
  State<CncScreen> createState() => _CncScreenState();
}

class _CncScreenState extends State<CncScreen> {
  List cncList = ['MIS', 'CNC'];
  List marketList = ['Market', 'LIMIT', 'SL', 'SL-M'];
  int _selectedIndex = 1;
  int _marketSelectedIndex = 0;
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
            "CNC",
            style: TextStyle(fontSize: 17, color: appcolors.whiteColor),
          )),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                          color: const Color(0xFF0E0E0E),
                          borderRadius: BorderRadius.circular(11),
                          border: Border.all(color: const Color(0xFF292929))),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Buy VMM",
                                style: TextStyle(color: appcolors.whiteColor),
                              ),
                              const Spacer(),
                              Text(
                                "₹ 111.95",
                                style: TextStyle(
                                    color: appcolors.whiteColor, fontSize: 12),
                              ),
                              Text(
                                "(+43.53%)",
                                style: TextStyle(
                                    color: appcolors.whiteColor, fontSize: 6),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                "₹ 111.95 on BSE",
                                style: TextStyle(
                                    fontSize: 10, color: appcolors.whiteColor),
                              ),
                              const Spacer(),
                              Text(
                                "X 190 Qty",
                                style: TextStyle(
                                    fontSize: 12, color: appcolors.whiteColor),
                              ),
                              Text(
                                "BSE",
                                style: TextStyle(
                                    fontSize: 8, color: appcolors.whiteColor),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        for (int i = 0; i < cncList.length; i++)
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectedIndex = i;
                              });
                            },
                            child: Container(
                              width: 80,
                              margin: const EdgeInsets.only(right: 10),
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: _selectedIndex == i
                                          ? appcolors.appColor
                                          : const Color(0xFF292929))),
                              child: Center(
                                child: Text(
                                  cncList[i],
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: _selectedIndex == i
                                          ? appcolors.appColor
                                          : appcolors.whiteColor),
                                ),
                              ),
                            ),
                          )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Qty.",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: appcolors.whiteColor),
                                  ),
                                  const Spacer(),
                                  Text(
                                    "(190.00 lots)",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: appcolors.whiteColor),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              TextField(
                                decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 12, horizontal: 10),
                                    filled: true,
                                    hintText: "-190",
                                    hintStyle: const TextStyle(
                                        fontSize: 12, color: Color(0xFFABABAB)),
                                    fillColor: const Color(0xFF0E0E0E),
                                    disabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: const BorderSide(
                                            color: Color(0xFF292929))),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: const BorderSide(
                                            color: Color(0xFF292929))),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: const BorderSide(
                                            color: Color(0xFF292929))),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: const BorderSide(
                                            color: Color(0xFF292929)))),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Price",
                                style: TextStyle(
                                    fontSize: 15, color: appcolors.whiteColor),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              TextField(
                                decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 12, horizontal: 10),
                                    filled: true,
                                    hintText: "111.95",
                                    hintStyle: const TextStyle(
                                        fontSize: 12, color: Color(0xFFABABAB)),
                                    fillColor: const Color(0xFF0E0E0E),
                                    disabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: const BorderSide(
                                            color: Color(0xFF292929))),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: const BorderSide(
                                            color: Color(0xFF292929))),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: const BorderSide(
                                            color: Color(0xFF292929))),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: const BorderSide(
                                            color: Color(0xFF292929)))),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        for (int i = 0; i < marketList.length; i++)
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _marketSelectedIndex = i;
                              });
                            },
                            child: Container(
                              width: 80,
                              margin: const EdgeInsets.only(right: 10),
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: _marketSelectedIndex == i
                                          ? appcolors.appColor
                                          : const Color(0xFF292929))),
                              child: Center(
                                child: Text(
                                  marketList[i],
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: _marketSelectedIndex == i
                                          ? appcolors.appColor
                                          : appcolors.whiteColor),
                                ),
                              ),
                            ),
                          )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "Trigger Price",
                      style:
                          TextStyle(fontSize: 15, color: appcolors.whiteColor),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 10),
                                filled: true,
                                hintText: "0",
                                hintStyle: const TextStyle(
                                    fontSize: 12, color: Color(0xFFABABAB)),
                                fillColor: const Color(0xFF0E0E0E),
                                disabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: const BorderSide(
                                        color: Color(0xFF292929))),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: const BorderSide(
                                        color: Color(0xFF292929))),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: const BorderSide(
                                        color: Color(0xFF292929))),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: const BorderSide(
                                        color: Color(0xFF292929)))),
                          ),
                        ),
                        Expanded(child: Container())
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
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
                                  color: Color(0xFF292929), // Background color
                                ))),
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(40),
                                topRight: Radius.circular(40),
                              ),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Actual Charges at the end of the day might differ",
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: appcolors.redColor),
                                          ),
                                          const Spacer(),
                                          GestureDetector(
                                              onTap: () {
                                                Navigator.pop(context);
                                              },
                                              child: SvgPicture.asset(
                                                  "assets/svg/close.svg"))
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Container(
                                        height: 1,
                                        width: double.infinity,
                                        color: const Color(0xFF292929),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        children: [
                                          const Text(
                                            "Transaction",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Color(0xFFABABAB)),
                                          ),
                                          const Spacer(),
                                          Text(
                                            "0.80",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: appcolors.whiteColor),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          const Text(
                                            "STT",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Color(0xFFABABAB)),
                                          ),
                                          const Spacer(),
                                          Text(
                                            "21.27",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: appcolors.whiteColor),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          const Text(
                                            "Stamp Duty",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Color(0xFFABABAB)),
                                          ),
                                          const Spacer(),
                                          Text(
                                            "3.00",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: appcolors.whiteColor),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          const Text(
                                            "SEBI Fees",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Color(0xFFABABAB)),
                                          ),
                                          const Spacer(),
                                          Text(
                                            "0.02",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: appcolors.whiteColor),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          const Text(
                                            "GST",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Color(0xFFABABAB)),
                                          ),
                                          const Spacer(),
                                          Text(
                                            "0.15",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: appcolors.whiteColor),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        height: 1,
                                        width: double.infinity,
                                        color: const Color(0xFF292929),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Total",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: appcolors.whiteColor),
                                          ),
                                          const Spacer(),
                                          Text(
                                            "25.24",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: appcolors.whiteColor),
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
                          vertical: 10, horizontal: 15),
                      color: const Color(0xFF2A3225).withOpacity(0.4),
                      child: Row(
                        children: [
                          Text(
                            "Order Charges",
                            style: TextStyle(
                                fontSize: 12, color: appcolors.whiteColor),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "₹ 25.24",
                            style: TextStyle(
                                fontSize: 12, color: appcolors.whiteColor),
                          ),
                          const Spacer(),
                          SvgPicture.asset("assets/svg/info.svg")
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFF95E362)),
                  child: Center(
                    child: Text(
                      "Buy",
                      style:
                          TextStyle(fontSize: 16, color: appcolors.blackColor),
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
                      border: Border.all(color: appcolors.appColor),
                      color: const Color(0xFF1D2916)),
                  child: Center(
                    child: Text(
                      "Cancel",
                      style:
                          TextStyle(fontSize: 16, color: appcolors.whiteColor),
                    ),
                  ),
                )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
