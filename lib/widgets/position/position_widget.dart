import 'package:algodynamic/constants/custom_dropdown/custom_drop_down.dart';
import 'package:algodynamic/screens/strategies/all_instrument_screen.dart';
import 'package:algodynamic/screens/strategies/instrument_add_screen.dart';
import 'package:algodynamic/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Column positionWidget(
    BuildContext context,
    List<String> chartTypemenuOptions,
    List<String> timeFramemenuOptions,
    List<String> holdingType,
    TextEditingController qtyLotsController,
    bool _showOptions,
    TextEditingController masAllocationController,
    TextEditingController maxqualityController,
    ValueChanged<bool> onIndexChanged,
    List<String> sizingType) {
  return Column(
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
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color(0xFF2A3225)),
                    child: Text(
                      "Buy",
                      style: TextStyle(fontSize: 16, color: appcolors.appColor),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color(0xFF200C0C)),
                    child: Text(
                      "Sell",
                      style: TextStyle(fontSize: 16, color: appcolors.redColor),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    "Instruments",
                    style: TextStyle(fontSize: 16, color: appcolors.whiteColor),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const InstrumentAddScreen(),
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
                      style: TextStyle(fontSize: 12, color: appcolors.appColor),
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
                          border: Border.all(color: const Color(0xFf292929))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "ADANIENT",
                            style: TextStyle(
                                fontSize: 12, color: appcolors.whiteColor),
                          ),
                          const Text(
                            "NSE",
                            style: TextStyle(
                                fontSize: 12, color: Color(0xFFABABAB)),
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
                          border: Border.all(color: const Color(0xFf292929))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "ADANIPORTS",
                            style: TextStyle(
                                fontSize: 12, color: appcolors.whiteColor),
                          ),
                          const Text(
                            "NSE",
                            style: TextStyle(
                                fontSize: 12, color: Color(0xFFABABAB)),
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
                          border: Border.all(color: const Color(0xFf292929))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "APOLLOHOS",
                            style: TextStyle(
                                fontSize: 12, color: appcolors.whiteColor),
                          ),
                          const Text(
                            "NSE",
                            style: TextStyle(
                                fontSize: 12, color: Color(0xFFABABAB)),
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
                          border: Border.all(color: const Color(0xFf292929))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "ASIANPAINT",
                            style: TextStyle(
                                fontSize: 12, color: appcolors.whiteColor),
                          ),
                          const Text(
                            "NSE",
                            style: TextStyle(
                                fontSize: 12, color: Color(0xFFABABAB)),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Chart",
                          style: TextStyle(
                              color: appcolors.whiteColor, fontSize: 15),
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
                                side:
                                    const BorderSide(color: Color(0xFF292929)),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              context: context,
                              position: RelativeRect.fromLTRB(
                                10, // Left margin to align closer to the left
                                420, // Top margin (controls vertical position)
                                MediaQuery.of(context).size.width -
                                    50, // Right alignment pushing menu left
                                0, // Bottom
                              ),
                              items: chartTypemenuOptions
                                  .map((option) => PopupMenuItem<String>(
                                        value: option,
                                        child: Center(
                                          child: Text(
                                            option,
                                            style: TextStyle(
                                                color: appcolors.whiteColor),
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
                          () {
                            final RenderBox overlay = Overlay.of(context)
                                .context
                                .findRenderObject() as RenderBox;
                            final double screenWidth = overlay.size.width;
                            showMenu<String>(
                              color: appcolors.blackColor,
                              shape: RoundedRectangleBorder(
                                side:
                                    const BorderSide(color: Color(0xFF292929)),
                                borderRadius: BorderRadius.circular(12),
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
                                  .map((option) => PopupMenuItem<String>(
                                        value: option,
                                        child: Center(
                                          child: Text(
                                            option,
                                            style: TextStyle(
                                                color: appcolors.whiteColor),
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
                style: TextStyle(color: appcolors.whiteColor, fontSize: 15),
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
                      side: const BorderSide(color: Color(0xFF292929)),
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
                                  style: TextStyle(color: appcolors.whiteColor),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Qty in Lots",
                          style: TextStyle(
                              color: appcolors.whiteColor, fontSize: 15),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          controller: qtyLotsController,
                          keyboardType: TextInputType.number,
                          style: const TextStyle(
                              color: Colors.white), // Text color
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 12, horizontal: 10),
                            filled: true,
                            fillColor:
                                Colors.black, // TextField background color
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(
                                color: Colors.white38, // Border color
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(
                                color:
                                    Colors.white38, // Border color when enabled
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(
                                color:
                                    Colors.white, // Border color when focused
                                width: 1.5,
                              ),
                            ),
                            hintText: '1', // Default value
                            hintStyle: const TextStyle(color: Colors.white54),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  if (_showOptions)
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Max Allocation",
                            style: TextStyle(
                                color: appcolors.whiteColor, fontSize: 15),
                          ),
                          const SizedBox(height: 10),
                          TextField(
                            keyboardType: TextInputType.number,
                            controller: masAllocationController,
                            style: const TextStyle(
                                color: Colors.white), // Text color
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 10),
                              filled: true,
                              fillColor:
                                  Colors.black, // TextField background color
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                  color: Colors.white38, // Border color
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                  color: Colors
                                      .white38, // Border color when enabled
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                  color:
                                      Colors.white, // Border color when focused
                                  width: 1.5,
                                ),
                              ),
                              hintText: '1', // Default value
                              hintStyle: const TextStyle(color: Colors.white54),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Max Quality (in Lots)",
                            style: TextStyle(
                                color: appcolors.whiteColor, fontSize: 15),
                          ),
                          const SizedBox(height: 10),
                          TextField(
                            controller: maxqualityController,
                            keyboardType: TextInputType.number,
                            style: const TextStyle(
                                color: Colors.white), // Text color
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 10),
                              filled: true,
                              fillColor:
                                  Colors.black, // TextField background color
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                  color: Colors.white38, // Border color
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                  color: Colors
                                      .white38, // Border color when enabled
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                  color:
                                      Colors.white, // Border color when focused
                                  width: 1.5,
                                ),
                              ),
                              hintText: '1', // Default value
                              hintStyle: const TextStyle(color: Colors.white54),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Pstn. sizing type",
                            style: TextStyle(
                                color: appcolors.whiteColor, fontSize: 15),
                          ),
                          const SizedBox(height: 10),
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
                                  400, // Top position
                                  10, // Right-side margin
                                  0, // Bottom position
                                ),
                                items: sizingType
                                    .map((option) => PopupMenuItem<String>(
                                          value: option,
                                          child: Center(
                                            child: Text(
                                              option,
                                              style: TextStyle(
                                                  color: appcolors.whiteColor),
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
                  onIndexChanged(_showOptions);
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
            borderRadius: BorderRadius.circular(10), color: appcolors.appColor),
        child: Center(
          child: Text(
            "Save & Run Backtest",
            style: TextStyle(fontSize: 16, color: appcolors.blackColor),
          ),
        ),
      ),
    ],
  );
}
