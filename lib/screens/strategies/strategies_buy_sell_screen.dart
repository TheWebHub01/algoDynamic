import 'package:algodynamic/constants/custom_dropdown/custom_drop_down.dart';
import 'package:algodynamic/screens/home/condition_edit_screen.dart';
import 'package:algodynamic/screens/strategies/all_instrument_screen.dart';
import 'package:algodynamic/screens/strategies/instrument_add_screen.dart';
import 'package:algodynamic/utils/colors.dart';
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
                Column(
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: const Color(0xFF2A3225)),
                                  child: Text(
                                    "Buy",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: appcolors.appColor),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: const Color(0xFF200C0C)),
                                  child: Text(
                                    "Sell",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: appcolors.redColor),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                Text(
                                  "Instruments",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: appcolors.whiteColor),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const InstrumentAddScreen(),
                                        ));
                                  },
                                  child: SvgPicture.asset(
                                    "assets/svg/plus.svg",
                                    color: appcolors.appColor,
                                  ),
                                ),
                                const Spacer(),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const AllInstrumentScreen()));
                                  },
                                  child: Text(
                                    "View All",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: appcolors.appColor),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      left: 10,
                                      top: 10,
                                      bottom: 10,
                                    ),
                                    decoration: BoxDecoration(
                                        color: const Color(0xFF0E0E0E),
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                            color: const Color(0xFf292929))),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "ADANIENT",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: appcolors.whiteColor),
                                        ),
                                        const Text(
                                          "NSE",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xFFABABAB)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      left: 10,
                                      top: 10,
                                      bottom: 10,
                                    ),
                                    decoration: BoxDecoration(
                                        color: const Color(0xFF0E0E0E),
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                            color: const Color(0xFf292929))),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "ADANIPORTS",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: appcolors.whiteColor),
                                        ),
                                        const Text(
                                          "NSE",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xFFABABAB)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 15),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      left: 10,
                                      top: 10,
                                      bottom: 10,
                                    ),
                                    decoration: BoxDecoration(
                                        color: const Color(0xFF0E0E0E),
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                            color: const Color(0xFf292929))),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "APOLLOHOS",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: appcolors.whiteColor),
                                        ),
                                        const Text(
                                          "NSE",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xFFABABAB)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      left: 10,
                                      top: 10,
                                      bottom: 10,
                                    ),
                                    decoration: BoxDecoration(
                                        color: const Color(0xFF0E0E0E),
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                            color: const Color(0xFf292929))),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "ASIANPAINT",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: appcolors.whiteColor),
                                        ),
                                        const Text(
                                          "NSE",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xFFABABAB)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Chart",
                                        style: TextStyle(
                                            color: appcolors.whiteColor,
                                            fontSize: 15),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      customDropDown(
                                        "Candlestick",
                                        () {
                                          showMenu<String>(
                                            color: appcolors.blackColor,
                                            shape: RoundedRectangleBorder(
                                              side: const BorderSide(
                                                  color: Color(0xFF292929)),
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            context: context,
                                            position: RelativeRect.fromLTRB(
                                              10, // Left margin to align closer to the left
                                              420, // Top margin (controls vertical position)
                                              MediaQuery.of(context)
                                                      .size
                                                      .width -
                                                  50, // Right alignment pushing menu left
                                              0, // Bottom
                                            ),
                                            items: chartTypemenuOptions
                                                .map((option) =>
                                                    PopupMenuItem<String>(
                                                      value: option,
                                                      child: Center(
                                                        child: Text(
                                                          option,
                                                          style: TextStyle(
                                                              color: appcolors
                                                                  .whiteColor),
                                                        ),
                                                      ),
                                                    ))
                                                .toList(), // Convert to a list
                                            elevation: 8.0,
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Time Frame",
                                        style: TextStyle(
                                            color: appcolors.whiteColor,
                                            fontSize: 15),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      customDropDown(
                                        "1 Minute",
                                        () {
                                          final RenderBox overlay =
                                              Overlay.of(context)
                                                      .context
                                                      .findRenderObject()
                                                  as RenderBox;
                                          final double screenWidth =
                                              overlay.size.width;
                                          showMenu<String>(
                                            color: appcolors.blackColor,
                                            shape: RoundedRectangleBorder(
                                              side: const BorderSide(
                                                  color: Color(0xFF292929)),
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            context: context,
                                            position: RelativeRect.fromLTRB(
                                              screenWidth -
                                                  150, // Adjust this for the exact horizontal alignment
                                              600, // Top position
                                              10, // Right-side margin
                                              0, // Bottom position
                                            ),
                                            items: timeFramemenuOptions
                                                .map((option) =>
                                                    PopupMenuItem<String>(
                                                      value: option,
                                                      child: Center(
                                                        child: Text(
                                                          option,
                                                          style: TextStyle(
                                                              color: appcolors
                                                                  .whiteColor),
                                                        ),
                                                      ),
                                                    ))
                                                .toList(), // Convert to a list
                                            elevation: 8.0,
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 15),
                            Text(
                              "Holding Type",
                              style: TextStyle(
                                  color: appcolors.whiteColor, fontSize: 15),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            customDropDown(
                              "CNC/NRML",
                              () {
                                final RenderBox overlay = Overlay.of(context)
                                    .context
                                    .findRenderObject() as RenderBox;
                                final double screenWidth = overlay.size.width;

                                showMenu<String>(
                                  color: appcolors.blackColor,
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        color: Color(0xFF292929)),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  context: context,
                                  position: RelativeRect.fromLTRB(
                                    screenWidth -
                                        150, // Adjust this for the exact horizontal alignment
                                    500, // Top position
                                    10, // Right-side margin
                                    0, // Bottom position
                                  ),
                                  items: holdingType
                                      .map((option) => PopupMenuItem<String>(
                                            value: option,
                                            child: Center(
                                              child: Text(
                                                option,
                                                style: TextStyle(
                                                    color:
                                                        appcolors.whiteColor),
                                              ),
                                            ),
                                          ))
                                      .toList(),
                                  elevation: 8.0,
                                );
                              },
                            ),
                            const SizedBox(height: 15),
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Qty in Lots",
                                        style: TextStyle(
                                            color: appcolors.whiteColor,
                                            fontSize: 15),
                                      ),
                                      const SizedBox(height: 10),
                                      TextField(
                                        controller: qtyLotsController,
                                        keyboardType: TextInputType.number,
                                        style: const TextStyle(
                                            color: Colors.white), // Text color
                                        decoration: InputDecoration(
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 12, horizontal: 10),
                                          filled: true,
                                          fillColor: Colors
                                              .black, // TextField background color
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            borderSide: const BorderSide(
                                              color: Colors
                                                  .white38, // Border color
                                            ),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            borderSide: const BorderSide(
                                              color: Colors
                                                  .white38, // Border color when enabled
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            borderSide: const BorderSide(
                                              color: Colors
                                                  .white, // Border color when focused
                                              width: 1.5,
                                            ),
                                          ),
                                          hintText: '1', // Default value
                                          hintStyle: const TextStyle(
                                              color: Colors.white54),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 10),
                                if (_showOptions)
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Max Allocation",
                                          style: TextStyle(
                                              color: appcolors.whiteColor,
                                              fontSize: 15),
                                        ),
                                        const SizedBox(height: 10),
                                        TextField(
                                          keyboardType: TextInputType.number,
                                          controller: masAllocationController,
                                          style: const TextStyle(
                                              color:
                                                  Colors.white), // Text color
                                          decoration: InputDecoration(
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    vertical: 12,
                                                    horizontal: 10),
                                            filled: true,
                                            fillColor: Colors
                                                .black, // TextField background color
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              borderSide: const BorderSide(
                                                color: Colors
                                                    .white38, // Border color
                                              ),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              borderSide: const BorderSide(
                                                color: Colors
                                                    .white38, // Border color when enabled
                                              ),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              borderSide: const BorderSide(
                                                color: Colors
                                                    .white, // Border color when focused
                                                width: 1.5,
                                              ),
                                            ),
                                            hintText: '1', // Default value
                                            hintStyle: const TextStyle(
                                                color: Colors.white54),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                else
                                  const Expanded(child: Column())
                              ],
                            ),
                            const SizedBox(height: 15),
                            if (_showOptions)
                              Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Max Quality (in Lots)",
                                          style: TextStyle(
                                              color: appcolors.whiteColor,
                                              fontSize: 15),
                                        ),
                                        const SizedBox(height: 10),
                                        TextField(
                                          controller: maxqualityController,
                                          keyboardType: TextInputType.number,
                                          style: const TextStyle(
                                              color:
                                                  Colors.white), // Text color
                                          decoration: InputDecoration(
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    vertical: 12,
                                                    horizontal: 10),
                                            filled: true,
                                            fillColor: Colors
                                                .black, // TextField background color
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              borderSide: const BorderSide(
                                                color: Colors
                                                    .white38, // Border color
                                              ),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              borderSide: const BorderSide(
                                                color: Colors
                                                    .white38, // Border color when enabled
                                              ),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              borderSide: const BorderSide(
                                                color: Colors
                                                    .white, // Border color when focused
                                                width: 1.5,
                                              ),
                                            ),
                                            hintText: '1', // Default value
                                            hintStyle: const TextStyle(
                                                color: Colors.white54),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Pstn. sizing type",
                                          style: TextStyle(
                                              color: appcolors.whiteColor,
                                              fontSize: 15),
                                        ),
                                        const SizedBox(height: 10),
                                        customDropDown(
                                          "CNC/NRML",
                                          () {
                                            final RenderBox overlay =
                                                Overlay.of(context)
                                                        .context
                                                        .findRenderObject()
                                                    as RenderBox;
                                            final double screenWidth =
                                                overlay.size.width;

                                            showMenu<String>(
                                              color: appcolors.blackColor,
                                              shape: RoundedRectangleBorder(
                                                side: const BorderSide(
                                                    color: Color(0xFF292929)),
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                              ),
                                              context: context,
                                              position: RelativeRect.fromLTRB(
                                                screenWidth -
                                                    150, // Adjust this for the exact horizontal alignment
                                                400, // Top position
                                                10, // Right-side margin
                                                0, // Bottom position
                                              ),
                                              items: sizingType
                                                  .map((option) =>
                                                      PopupMenuItem<String>(
                                                        value: option,
                                                        child: Center(
                                                          child: Text(
                                                            option,
                                                            style: TextStyle(
                                                                color: appcolors
                                                                    .whiteColor),
                                                          ),
                                                        ),
                                                      ))
                                                  .toList(),
                                              elevation: 8.0,
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  _showOptions = !_showOptions; // Toggle state
                                });
                              },
                              child: Text(
                                _showOptions ? "Hide Options" : "Show Options",
                                style: TextStyle(color: appcolors.appColor),
                              ),
                            ),
                            const SizedBox(height: 30),
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
                          "Save & Run Backtest",
                          style: TextStyle(
                              fontSize: 16, color: appcolors.blackColor),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Entry Conditions",
                          style: TextStyle(
                              color: appcolors.whiteColor, fontSize: 15),
                        ),
                        const Spacer(),
                        GestureDetector(
                            onTap: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => ConditionEditScreen(
                              //               title: widget.title,
                              //             )));
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
                          "Buy 1 share when Period min(3, Close(0) - Close(-1)  ) higher than 0 and RSI (14, 0 ) higher than RSI MA(14, simple...Read More",
                          style:
                              TextStyle(color: Color(0xFFABABAB), fontSize: 12),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    _showOptionsEntry
                        ? Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Entry Start Time",
                                      style: TextStyle(
                                          color: appcolors.whiteColor,
                                          fontSize: 15),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    GestureDetector(
                                      onTap: () async {
                                        TimeOfDay? pickedTime =
                                            await showTimePicker(
                                          context: context,
                                          initialTime: TimeOfDay.now(),
                                        );

                                        if (pickedTime != null) {
                                          setState(() {
                                            selectedTime =
                                                pickedTime.format(context);
                                          });
                                        }
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 12, horizontal: 10),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border: Border.all(
                                              color: const Color(0xFF292929)),
                                        ),
                                        child: Row(
                                          children: [
                                            Text(
                                              selectedTime,
                                              style: const TextStyle(
                                                  fontSize: 12,
                                                  color: Color(0xFFABABAB)),
                                            ),
                                            const Spacer(),
                                            SvgPicture.asset(
                                                "assets/svg/time.svg"),
                                          ],
                                        ),
                                      ),
                                    )
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
                                      "Entry Stop Time",
                                      style: TextStyle(
                                          color: appcolors.whiteColor,
                                          fontSize: 15),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    GestureDetector(
                                      onTap: () async {
                                        TimeOfDay? pickedTime =
                                            await showTimePicker(
                                          context: context,
                                          initialTime: TimeOfDay.now(),
                                        );

                                        if (pickedTime != null) {
                                          setState(() {
                                            selectedEndTime =
                                                pickedTime.format(context);
                                          });
                                        }
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 12, horizontal: 10),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border: Border.all(
                                              color: const Color(0xFF292929)),
                                        ),
                                        child: Row(
                                          children: [
                                            Text(
                                              selectedEndTime,
                                              style: const TextStyle(
                                                  fontSize: 12,
                                                  color: Color(0xFFABABAB)),
                                            ),
                                            const Spacer(),
                                            SvgPicture.asset(
                                                "assets/svg/time.svg"),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        : Container(),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          _showOptionsEntry =
                              !_showOptionsEntry; // Toggle state
                        });
                      },
                      child: Text(
                        _showOptionsEntry ? "Hide Options" : "Show Options",
                        style: TextStyle(color: appcolors.appColor),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Stop Loss %",
                                style: TextStyle(
                                    fontSize: 15, color: appcolors.whiteColor),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: 40,
                                child: TextField(
                                  decoration: InputDecoration(
                                      contentPadding:
                                          const EdgeInsets.only(left: 15),
                                      fillColor: const Color(0xFF0E0E0E),
                                      filled: true,
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          borderSide: const BorderSide(
                                              color: Color(0xFF292929))),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          borderSide: const BorderSide(
                                              color: Color(0xFF292929))),
                                      disabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          borderSide: const BorderSide(
                                              color: Color(0xFF292929))),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          borderSide: const BorderSide(
                                              color: Color(0xFF292929)))),
                                ),
                              )
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
                                "Target Profit %",
                                style: TextStyle(
                                    fontSize: 15, color: appcolors.whiteColor),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: 40,
                                child: TextField(
                                  decoration: InputDecoration(
                                      contentPadding:
                                          const EdgeInsets.only(left: 15),
                                      fillColor: const Color(0xFF0E0E0E),
                                      filled: true,
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          borderSide: const BorderSide(
                                              color: Color(0xFF292929))),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          borderSide: const BorderSide(
                                              color: Color(0xFF292929))),
                                      disabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          borderSide: const BorderSide(
                                              color: Color(0xFF292929))),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          borderSide: const BorderSide(
                                              color: Color(0xFF292929)))),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Exit Conditions",
                      style:
                          TextStyle(fontSize: 15, color: appcolors.whiteColor),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: const Color(0xFF0E0E0E),
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: const Color(0xFF292929))),
                      child: Center(
                        child: Text(
                          "+ Add a Condition",
                          style: TextStyle(
                              fontSize: 12, color: appcolors.appColor),
                        ),
                      ),
                    )
                  ],
                ),
                const Column(
                  children: [],
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
