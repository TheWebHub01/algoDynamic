import 'package:algodynamic/constants/NoOrder/no_order_widget.dart';
import 'package:algodynamic/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LiveScannersScreen extends StatefulWidget {
  const LiveScannersScreen({super.key});

  @override
  State<LiveScannersScreen> createState() => _LiveScannersScreenState();
}

class _LiveScannersScreenState extends State<LiveScannersScreen>
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
            "Live Scanner",
            style: TextStyle(fontSize: 17, color: appcolors.whiteColor),
          )),
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
                  text: "Live (0)",
                ),
                Tab(
                  text: "Stopped (0)",
                ),
              ]),
          Expanded(
              child: TabBarView(controller: tabController, children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: noResultFound("No Scanners"),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: noResultFound("No Scanners"),
                )
              ],
            ),
          ]))
        ],
      ),
    );
  }
}
