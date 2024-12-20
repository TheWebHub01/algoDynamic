import 'package:algodynamic/constants/NoOrder/no_order_widget.dart';
import 'package:algodynamic/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen>
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
          "Notifications",
          style: TextStyle(fontSize: 18, color: appcolors.whiteColor),
        ),
      ),
      body: Column(
        children: [
          TabBar(
              indicatorPadding: const EdgeInsets.symmetric(horizontal: 40),
              unselectedLabelColor: const Color(0xFFABABAB),
              labelColor: appcolors.appColor,
              indicatorColor: appcolors.appColor,
              controller: tabController,
              tabs: const [
                Tab(
                  text: "Live Strategies",
                ),
                Tab(
                  text: "Virtual Deploy.",
                ),
                Tab(
                  text: "Live Scanner",
                ),
              ]),
          Expanded(
            child: TabBarView(controller: tabController, children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: noResultFound("No Notifications"),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: noResultFound("No Notifications"),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: noResultFound("No Notifications"),
                  )
                ],
              ),
            ]),
          )
        ],
      ),
    );
  }
}
