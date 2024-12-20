import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Container customDropDown(String title, void Function()? onPressed) {
  return Container(
    padding: EdgeInsets.only(left: 10),
    decoration: BoxDecoration(
        color: Color(0xFF0E0E0E),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFf292929))),
    child: Row(
      children: [
        Expanded(
          flex: 8,
          child: Text(
            title,
            style: TextStyle(fontSize: 12, color: Color(0xFFABABAB)),
          ),
        ),
        Spacer(),
        Expanded(
          flex: 2,
          child: TextButton(
              onPressed: onPressed,
              child: SvgPicture.asset("assets/svg/drop_down.svg")),
        )
      ],
    ),
  );
}
