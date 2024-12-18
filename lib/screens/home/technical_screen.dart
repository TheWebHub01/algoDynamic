import 'package:algodynamic/models/mockdata.dart';
import 'package:algodynamic/utils/colors.dart';
import 'package:algodynamic/widgets/market/market_widget.dart';
import 'package:algodynamic/widgets/scanner/scanner_widget.dart';
import 'package:algodynamic/widgets/technicals/technicals_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:interactive_chart/interactive_chart.dart';

class TechnicalScreen extends StatefulWidget {
  final String title;
  const TechnicalScreen({super.key, required this.title});

  @override
  State<TechnicalScreen> createState() => _TechnicalScreenState();
}

class _TechnicalScreenState extends State<TechnicalScreen>
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

  List minutes = [
    'Min',
    '3Min',
    '5Min',
    '10Min',
    '15Min',
    '30Min',
    '1 Hour',
    '1 Day',
  ];
  final List<CandleData> _data = MockDataTesla.candles;

  int selectedIndex = 6;
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
          "Technicals",
          style: TextStyle(fontSize: 18, color: appcolors.whiteColor),
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: SvgPicture.asset("assets/svg/more_vert.svg"))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  widget.title,
                  style: TextStyle(fontSize: 14, color: appcolors.whiteColor),
                ),
                const Spacer(),
                Text(
                  "589.80",
                  style: TextStyle(fontSize: 12, color: appcolors.whiteColor),
                ),
                Text(
                  " (-0.30%)",
                  style: TextStyle(fontSize: 12, color: appcolors.redColor),
                ),
              ],
            ),
            TabBar(
                indicatorPadding: const EdgeInsets.symmetric(horizontal: 15),
                unselectedLabelColor: const Color(0xFFABABAB),
                labelColor: appcolors.appColor,
                indicatorColor: appcolors.appColor,
                controller: tabController,
                tabs: const [
                  Tab(
                    text: "Technicals",
                  ),
                  Tab(
                    text: "Markets",
                  ),
                  Tab(
                    text: "Scanners",
                  ),
                ]),
            Expanded(
              child: TabBarView(
                  physics: NeverScrollableScrollPhysics(),
                  controller: tabController,
                  children: [
                    technicalsWidget(minutes, (value) {
                      setState(() {
                        selectedIndex = value;
                      });
                    }, selectedIndex, _data),
                    marketWidget(),
                    scannersWidget(),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
