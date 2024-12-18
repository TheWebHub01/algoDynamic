import 'dart:ui';

import 'package:algodynamic/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Column scannersWidget() {
  return Column(
    children: [
      const SizedBox(
        height: 10,
      ),
      Row(
        children: [
          Text(
            "Popular Scanners",
            style: TextStyle(color: appcolors.whiteColor),
          ),
          const Spacer(),
          Text(
            "View all",
            style: TextStyle(color: appcolors.appColor, fontSize: 10),
          ),
          const SizedBox(
            width: 5,
          ),
          SvgPicture.asset("assets/svg/next2.svg")
        ],
      ),
      // Stack(
      //   children: [
      Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            border: Border.all(color: const Color(0xFF292929))),
        child: Column(
          children: [
            SvgPicture.asset("assets/svg/graph_2.svg"),
            Text(
              "Bearish SMA\nAnd RSI",
              style: TextStyle(color: appcolors.whiteColor),
            )
          ],
        ),
      ),
      // Positioned(
      //   bottom: -10,
      //   child: Container(
      //     height: 30,
      //     width: 50,
      //     color: Colors.amber,
      //   ),
      // )
      //   ],
      // )
    ],
  );
}
