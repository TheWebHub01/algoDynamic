import 'package:algodynamic/constants/custom_dropdown/custom_drop_down.dart';
import 'package:algodynamic/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Column paramsWidget(
    BuildContext context,
    List<String> dailyStratergyCycleOptions,
    DateTime? pickedStartDate,
    ValueChanged<String> onIndexChangedselectedStartTime,
    ValueChanged<String> onIndexChangedselectedEndTime,
    String selectedStartDate,
    String selectedEndDate,
    DateTime? pickedStopDate) {
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
                          "Initial Capital",
                          style: TextStyle(
                              color: appcolors.whiteColor, fontSize: 13),
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
                          "Daily Stratergy Cycle",
                          style: TextStyle(
                              color: appcolors.whiteColor, fontSize: 13),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        customDropDown(
                          "10",
                          () {
                            showMenu<String>(
                              color: appcolors.blackColor,
                              shape: RoundedRectangleBorder(
                                side:
                                    const BorderSide(color: Color(0xFF292929)),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              context: context,
                              position: const RelativeRect.fromLTRB(
                                10, // Left margin to align closer to the left
                                220, // Top margin (controls vertical position)
                                0, // Right alignment pushing menu left
                                0, // Bottom
                              ),
                              items: dailyStratergyCycleOptions
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
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Entry Start Time",
                          style: TextStyle(
                              color: appcolors.whiteColor, fontSize: 15),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () async {
                            pickedStartDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(
                                  2000), // The earliest date the picker allows
                              lastDate: DateTime(
                                  2100), // The latest date the picker allows
                            );

                            if (pickedStartDate != null) {
                              String formattedDate =
                                  "${pickedStartDate!.day.toString().padLeft(2, '0')}-${pickedStartDate!.month.toString().padLeft(2, '0')}-${pickedStartDate!.year}";

                              onIndexChangedselectedStartTime(
                                  formattedDate); // Assuming you reuse the same method for updating the date
                            }
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 12, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border:
                                  Border.all(color: const Color(0xFF292929)),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  selectedStartDate,
                                  style: const TextStyle(
                                      fontSize: 12, color: Color(0xFFABABAB)),
                                ),
                                const Spacer(),
                                SvgPicture.asset("assets/svg/calender.svg"),
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
                              color: appcolors.whiteColor, fontSize: 15),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () async {
                            pickedStopDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(
                                  2000), // The earliest date the picker allows
                              lastDate: DateTime(
                                  2100), // The latest date the picker allows
                            );

                            if (pickedStopDate != null) {
                              String formattedDate =
                                  "${pickedStopDate!.day.toString().padLeft(2, '0')}-${pickedStopDate!.month.toString().padLeft(2, '0')}-${pickedStopDate!.year}";
                              onIndexChangedselectedEndTime(
                                  formattedDate); // Assuming you reuse the same method for updating the date
                            }
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 12, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border:
                                  Border.all(color: const Color(0xFF292929)),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  selectedEndDate,
                                  style: const TextStyle(
                                      fontSize: 12, color: Color(0xFFABABAB)),
                                ),
                                const Spacer(),
                                SvgPicture.asset("assets/svg/calender.svg"),
                              ],
                            ),
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
                "Add Description",
                style: TextStyle(color: appcolors.whiteColor, fontSize: 15),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: const Color(0xFF292929)),
                ),
                child: Text(
                  "The Strategy initiates a buy position when the price break out of WMA resistance and WMA is also indicating bullishness. The Strategy is suitable for Bullish Trending Markets.",
                  style: TextStyle(
                      color: Color(0xFFABABAB), fontSize: 12, height: 1.7),
                ),
              )
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
