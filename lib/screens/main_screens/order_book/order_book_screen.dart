import 'package:algodynamic/constants/NoOrder/no_order_widget.dart';
import 'package:algodynamic/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OrderBookScreen extends StatefulWidget {
  const OrderBookScreen({super.key});

  @override
  State<OrderBookScreen> createState() => _OrderBookScreenState();
}

class _OrderBookScreenState extends State<OrderBookScreen>
    with TickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(
      initialIndex: 0,
      length: 2,
      vsync: this,
    );
  }

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
          "Order Book",
          style: TextStyle(fontSize: 18, color: appcolors.whiteColor),
        ),
      ),
      body: Column(
        children: [
          TabBar(
              indicatorPadding: const EdgeInsets.symmetric(horizontal: 50),
              unselectedLabelColor: const Color(0xFFABABAB),
              labelColor: appcolors.appColor,
              indicatorColor: appcolors.appColor,
              controller: tabController,
              tabs: const [
                Tab(
                  text: "Open Order",
                ),
                Tab(
                  text: "Executed Orders (1)",
                ),
              ]),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: noResultFound("No Orders"),
                    )
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                              const Text(
                                "BSE",
                                style: TextStyle(
                                    fontSize: 7, color: Color(0xFF9D9D9D)),
                              ),
                              const Spacer(),
                              Text(
                                "Complete",
                                style: TextStyle(
                                    fontSize: 10, color: appcolors.whiteColor),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Row(
                            children: [
                              Text(
                                "₹ 113.35",
                                style: TextStyle(
                                    color: appcolors.whiteColor, fontSize: 10),
                              ),
                              const Text(
                                "(+43.33%)",
                                style: TextStyle(
                                    fontSize: 6, color: Color(0xFF9D9D9D)),
                              ),
                              const Spacer(),
                              Text(
                                "₹ 110.00",
                                style: TextStyle(
                                    fontSize: 10, color: appcolors.whiteColor),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Row(
                            children: [
                              Text(
                                "190",
                                style: TextStyle(
                                    color: appcolors.whiteColor, fontSize: 12),
                              ),
                              const Text(
                                "at 18 Dec 2024, 09:44",
                                style: TextStyle(
                                    fontSize: 9, color: Color(0xFF9D9D9D)),
                              ),
                              const Spacer(),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: const Color(0xFF200C0C),
                                    border:
                                        Border.all(color: appcolors.redColor)),
                                child: Text(
                                  "Sell",
                                  style: TextStyle(
                                      fontSize: 10, color: appcolors.redColor),
                                ),
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: const Color(0xFF2A3225),
                                    border:
                                        Border.all(color: appcolors.appColor)),
                                child: Text(
                                  "CNC",
                                  style: TextStyle(
                                      fontSize: 10, color: appcolors.appColor),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
               
                 ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
