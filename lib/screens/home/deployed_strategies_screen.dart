import 'package:algodynamic/constants/NoOrder/no_order_widget.dart';
import 'package:algodynamic/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DeployedStrategiesScreen extends StatefulWidget {
  const DeployedStrategiesScreen({super.key});

  @override
  State<DeployedStrategiesScreen> createState() =>
      _DeployedStrategiesScreenState();
}

class _DeployedStrategiesScreenState extends State<DeployedStrategiesScreen>
    with TickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(
      initialIndex: 0,
      length: 3,
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
            "Deployed Strategies",
            style: TextStyle(fontSize: 17, color: appcolors.whiteColor),
          )),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: appcolors.appColor),
                          child: const Text(
                            "Live Deployment",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: appcolors.appColor)),
                          child: Text(
                            "Virtual Deployment",
                            style: TextStyle(
                                fontSize: 12, color: appcolors.whiteColor),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TabBar(
                      indicatorPadding:
                          const EdgeInsets.symmetric(horizontal: 30),
                      unselectedLabelColor: const Color(0xFFABABAB),
                      labelColor: appcolors.appColor,
                      indicatorColor: appcolors.appColor,
                      controller: tabController,
                      tabs: const [
                        Tab(
                          text: "Waiting",
                        ),
                        Tab(
                          text: "Entered",
                        ),
                        Tab(
                          text: "Stopped",
                        ),
                      ]),
                  Expanded(
                    child: TabBarView(controller: tabController, children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: noResultFound("No entered strategies"),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: noResultFound("No entered strategies"),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: noResultFound("No entered strategies"),
                          )
                        ],
                      ),
                    ]),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Total Profit / Loss",
                  style: TextStyle(fontSize: 16, color: appcolors.whiteColor),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "₹ 0.00",
                  style: TextStyle(fontSize: 16, color: appcolors.appColor),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
