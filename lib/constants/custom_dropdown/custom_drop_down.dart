import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Container customDropDown(String title) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 14),
    decoration: BoxDecoration(
        color: Color(0xFF0E0E0E),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFf292929))),
    child: Row(
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 12, color: Color(0xFFABABAB)),
        ),
        Spacer(),
        SvgPicture.asset("assets/svg/drop_down.svg")
      ],
    ),
  );
}
