import 'package:algodynamic/constants/custom_dropdown/custom_drop_down.dart';
import 'package:algodynamic/utils/colors.dart';
import 'package:flutter/material.dart';

Column exitWidget(
  BuildContext context,
  List<String> tpslTypeOptions,
  bool _showOptions,
  ValueChanged<bool> onIndexChanged,
) {
  return Column(
    children: [
      Expanded(
        child: SingleChildScrollView(
          child: Column(
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
                        TextField(
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 10),
                              fillColor: const Color(0xFF0E0E0E),
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                      color: Color(0xFF292929))),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                      color: Color(0xFF292929))),
                              disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                      color: Color(0xFF292929))),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                      color: Color(0xFF292929)))),
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
                        TextField(
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 10),
                              fillColor: const Color(0xFF0E0E0E),
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                      color: Color(0xFF292929))),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                      color: Color(0xFF292929))),
                              disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                      color: Color(0xFF292929))),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                      color: Color(0xFF292929)))),
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
                style: TextStyle(fontSize: 15, color: appcolors.whiteColor),
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
                    style: TextStyle(fontSize: 12, color: appcolors.appColor),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              _showOptions
                  ? Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Trailing SL% (Optional)",
                                style: TextStyle(
                                    color: Color(0xFF9D9D9D), fontSize: 10),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextField(
                                decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 12, horizontal: 10),
                                    fillColor: const Color(0xFF0E0E0E),
                                    filled: true,
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: const BorderSide(
                                            color: Color(0xFF292929))),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: const BorderSide(
                                            color: Color(0xFF292929))),
                                    disabledBorder: OutlineInputBorder(
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
                                "TPSL Type",
                                style: TextStyle(
                                    color: Color(0xFF9D9D9D), fontSize: 10),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              customDropDown(
                                "Percentage (pct)",
                                () {
                                  showMenu<String>(
                                    color: appcolors.blackColor,
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          color: Color(0xFF292929)),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    context: context,
                                    position: RelativeRect.fromLTRB(
                                      10, // Left margin to align closer to the left
                                      430, // Top margin (controls vertical position)
                                      0, // Right alignment pushing menu left
                                      0, // Bottom
                                    ),
                                    items: tpslTypeOptions
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
                                        .toList(), // Convert to a list
                                    elevation: 8.0,
                                  );
                                },
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  : Container(),
              TextButton(
                onPressed: () {
                  onIndexChanged(_showOptions);
                },
                child: Text(
                  _showOptions ? "Hide Options" : "Show Options",
                  style: TextStyle(color: appcolors.appColor),
                ),
              ),
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
