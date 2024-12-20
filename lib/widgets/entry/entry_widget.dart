import 'dart:ui';

import 'package:algodynamic/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Column entryWidget(
    BuildContext context,
    bool _showOptionsEntry,
    String selectedTime,
    String selectedEndTime,
    ValueChanged<String> onIndexChangedselectedStartTime,
    ValueChanged<String> onIndexChangedselectedEndTime,
    ValueChanged<bool> onIndexChanged,
    TimeOfDay? pickedStopTime,
    TimeOfDay? pickedTime) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(
        height: 10,
      ),
      Row(
        children: [
          Text(
            "Entry Conditions",
            style: TextStyle(color: appcolors.whiteColor, fontSize: 15),
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
            backgroundColor:
                Colors.transparent, // Transparent to customize everything
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
                      color: Color(0xFF292929), // Background color
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
                          color: appcolors.whiteColor.withOpacity(0.6),
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
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          decoration: BoxDecoration(
              color: const Color(0xFF0E0E0E),
              borderRadius: BorderRadius.circular(11),
              border: Border.all(color: const Color(0xFF292929))),
          child: const Text(
            "Buy 1 share when Period min(3, Close(0) - Close(-1)  ) higher than 0 and RSI (14, 0 ) higher than RSI MA(14, simple...Read More",
            style: TextStyle(color: Color(0xFFABABAB), fontSize: 12),
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
                            color: appcolors.whiteColor, fontSize: 15),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () async {
                          pickedTime = await showTimePicker(
                            context: context,
                            initialTime: TimeOfDay.now(),
                          );

                          if (pickedTime != null) {
                            String formattedTime =
                                "${pickedTime!.hour.toString().padLeft(2, '0')}:${pickedTime!.minute.toString().padLeft(2, '0')}";
                            onIndexChangedselectedStartTime(formattedTime);
                          }
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: const Color(0xFF292929)),
                          ),
                          child: Row(
                            children: [
                              Text(
                                selectedTime,
                                style: const TextStyle(
                                    fontSize: 12, color: Color(0xFFABABAB)),
                              ),
                              const Spacer(),
                              SvgPicture.asset("assets/svg/time.svg"),
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
                          pickedStopTime = await showTimePicker(
                            context: context,
                            initialTime: TimeOfDay.now(),
                          );
                          if (pickedStopTime != null) {
                            String formattedTime =
                                "${pickedStopTime!.hour.toString().padLeft(2, '0')}:${pickedStopTime!.minute.toString().padLeft(2, '0')}";
                            onIndexChangedselectedEndTime(formattedTime);
                          }
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: const Color(0xFF292929)),
                          ),
                          child: Row(
                            children: [
                              Text(
                                selectedEndTime,
                                style: const TextStyle(
                                    fontSize: 12, color: Color(0xFFABABAB)),
                              ),
                              const Spacer(),
                              SvgPicture.asset("assets/svg/time.svg"),
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
          onIndexChanged(!_showOptionsEntry);
        },
        child: Text(
          _showOptionsEntry ? "Hide Options" : "Show Options",
          style: TextStyle(color: appcolors.appColor),
        ),
      ),
    ],
  );
}
