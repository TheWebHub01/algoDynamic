import 'package:algodynamic/constants/custom_dropdown/custom_drop_down.dart';
import 'package:algodynamic/screens/home/condition_edit_screen.dart';
import 'package:algodynamic/screens/strategies/all_instrument_screen.dart';
import 'package:algodynamic/screens/strategies/instrument_add_screen.dart';
import 'package:algodynamic/utils/colors.dart';
import 'package:algodynamic/widgets/entry/entry_widget.dart';
import 'package:algodynamic/widgets/exit/exit_widget.dart';
import 'package:algodynamic/widgets/params/params_widget.dart';
import 'package:algodynamic/widgets/position/position_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StrategiesBuySellScreen extends StatefulWidget {
  const StrategiesBuySellScreen({super.key});

  @override
  State<StrategiesBuySellScreen> createState() =>
      _StrategiesBuySellScreenState();
}

class _StrategiesBuySellScreenState extends State<StrategiesBuySellScreen>
    with TickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(
      initialIndex: 0,
      length: 4,
      vsync: this,
    );
  }

  bool _showOptions = false;
  bool _showOptionsEntry = false;
  TextEditingController qtyLotsController = TextEditingController();
  TextEditingController masAllocationController = TextEditingController();
  TextEditingController maxqualityController = TextEditingController();
  List<String> timeFramemenuOptions = [
    '1 Minute',
    '3 Minutes',
    '5 Minutes',
    '10 Minutes',
    '15 Minutes',
    '30 Minutes',
    '1 Hour',
    '1 Day'
  ];
  List<String> chartTypemenuOptions = ['Heikin-Ashi', 'Candlestick'];
  List<String> holdingType = ['MIS', 'CNC/NRML'];
  List<String> sizingType = ['Capital Based', 'Risk Based'];
  String selectedTime = "00:00";
  String selectedEndTime = "00:00";
  TimeOfDay? pickedTime;
  TimeOfDay? pickedEndTime;

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
            "Strategies",
            style: TextStyle(fontSize: 17, color: appcolors.whiteColor),
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            TabBar(
                indicatorPadding: const EdgeInsets.symmetric(horizontal: 15),
                unselectedLabelColor: const Color(0xFFABABAB),
                labelColor: appcolors.appColor,
                indicatorColor: appcolors.appColor,
                controller: tabController,
                tabs: const [
                  Tab(
                    text: "Position",
                  ),
                  Tab(
                    text: "Entry",
                  ),
                  Tab(
                    text: "Exit",
                  ),
                  Tab(
                    text: "Params",
                  ),
                ]),
            Expanded(
              child: TabBarView(controller: tabController, children: [
                positionWidget(
                    context,
                    chartTypemenuOptions,
                    timeFramemenuOptions,
                    holdingType,
                    qtyLotsController,
                    _showOptions,
                    masAllocationController,
                    maxqualityController, (value) {
                  setState(() {
                    _showOptions = !_showOptions; // Toggle state
                  });
                }, sizingType),
                entryWidget(
                  context,
                  _showOptionsEntry,
                  selectedTime,
                  selectedEndTime,
                  (value) {
                    print("=== value ==>$value");
                    setState(() {
                      selectedTime = value;
                    });
                  },
                  (value) {
                    setState(() {
                      selectedEndTime = value;
                    });
                  },
                  (value) {
                    setState(() {
                      _showOptionsEntry = value;
                    });
                  },
                  pickedTime,
                  pickedEndTime,
                ),
                exitWidget(),
                paramsWidget(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
