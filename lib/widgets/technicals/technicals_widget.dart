import 'package:algodynamic/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:interactive_chart/interactive_chart.dart';

Column technicalsWidget(List<dynamic> minutes, ValueChanged<int> onIndexChanged,
    int selectedIndex, List<CandleData> _data) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(
        height: 15,
      ),
      Container(
        // margin: const EdgeInsets.symmetric(horizontal: 15),
        padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 12),
        decoration: BoxDecoration(
            color: const Color(0xFF0E0E0E),
            borderRadius: BorderRadius.circular(11),
            border: Border.all(color: const Color(0xFF292929))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for (int i = 0; i < minutes.length; i++)
              GestureDetector(
                onTap: () {
                  onIndexChanged(i); // Notify parent
                },
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: selectedIndex == i
                        ? appcolors.appColor
                        : Colors.transparent,
                  ),
                  child: Text(
                    minutes[i],
                    style: TextStyle(
                        fontSize: 11,
                        color: selectedIndex == i
                            ? appcolors.blackColor
                            : const Color(0xFFABABAB)),
                  ),
                ),
              )
          ],
        ),
      ),
      const SizedBox(
        height: 15,
      ),
      Text(
        "Summary",
        style: TextStyle(fontSize: 14, color: appcolors.whiteColor),
      ),
      const SizedBox(
        height: 15,
      ),
      Container(
        width: double.infinity,
        height: 1,
        color: const Color(0xFF292929),
      ),
      const SizedBox(
        height: 15,
      ),
      const Row(
        children: [
          Text(
            "Support",
            style: TextStyle(
              color: Color(0xFFA9A9A9),
            ),
          ),
          Spacer(),
          Text(
            "Resistance",
            style: TextStyle(
              color: Color(0xFFA9A9A9),
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 15,
      ),
      Row(
        children: [
          Text(
            "Short Term (5 & 20 SMA CrossOver)",
            style: TextStyle(color: appcolors.whiteColor, fontSize: 13),
          ),
          const Spacer(),
          Text(
            "Bullish",
            style: TextStyle(
              fontSize: 15,
              color: appcolors.appColor,
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 15,
      ),
      Row(
        children: [
          Text(
            "Long Term (50 & 200 SMA CrossOver)",
            style: TextStyle(color: appcolors.whiteColor, fontSize: 13),
          ),
          const Spacer(),
          Text(
            "------",
            style: TextStyle(
              fontSize: 15,
              color: appcolors.whiteColor,
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 15,
      ),
      Row(
        children: [
          Text(
            "RSI (14)",
            style: TextStyle(color: appcolors.whiteColor, fontSize: 13),
          ),
          const Spacer(),
          Text(
            "65 - Neutral",
            style: TextStyle(
              fontSize: 15,
              color: appcolors.whiteColor,
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 15,
      ),
      Text(
        "Technical Events",
        style: TextStyle(fontSize: 14, color: appcolors.whiteColor),
      ),
      const SizedBox(
        height: 20,
      ),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
            color: const Color(0xFF0E0E0E),
            borderRadius: BorderRadius.circular(11),
            border: Border.all(color: const Color(0xFF292929))),
        height: 250,
        child: InteractiveChart(
          candles: _data,
        ),
      )
    ],
  );
}
