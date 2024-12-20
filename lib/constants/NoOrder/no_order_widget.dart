import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget noResultFound(String title) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset("assets/svg/noresult.svg"),
        Text(
          title,
          style: TextStyle(fontSize: 20, color: Color(0xFF2D2D2D)),
        )
      ],
    );
  }