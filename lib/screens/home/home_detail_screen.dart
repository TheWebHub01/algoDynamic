import 'package:algodynamic/constants/custom_dropdown/custom_drop_down.dart';
import 'package:algodynamic/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeDetailScreen extends StatefulWidget {
  final String title;
  const HomeDetailScreen({super.key, required this.title});

  @override
  State<HomeDetailScreen> createState() => _HomeDetailScreenState();
}

class _HomeDetailScreenState extends State<HomeDetailScreen> {
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
          widget.title,
          style: TextStyle(fontSize: 18, color: appcolors.whiteColor),
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: SvgPicture.asset("assets/svg/more_vert.svg"))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Scan On",
            style: TextStyle(fontSize: 15, color: appcolors.whiteColor),
          ),
          customDropDown("Nifty 100"),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Text(
                      "Chart Type",
                      style:
                          TextStyle(color: appcolors.whiteColor, fontSize: 15),
                    ),
                    customDropDown("Nifty 100"),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      "Time Frame",
                      style:
                          TextStyle(color: appcolors.whiteColor, fontSize: 15),
                    ),
                    customDropDown("1 Minute"),
                  ],
                ),
              )
            ],
          ),
          Text(
            "Conditions",
            style: TextStyle(color: appcolors.whiteColor, fontSize: 15),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                border: Border.all(color: const Color(0xFF292929))),
            child: const Text(
              "Period Max(40, High(-1) ) lower than Period max(40, High(-41) ) *1.02 and Period max(40, High(-1) ) higher tha...Read More",
              style: TextStyle(color: Color(0xFFABABAB), fontSize: 12),
            ),
          ),
          Text(
            "Conditions",
            style: TextStyle(color: appcolors.whiteColor, fontSize: 15),
          ),
          TextField(
            decoration: InputDecoration(
                hintText: "Add description for scanner",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: const BorderSide(color: Color(0xFF292929)))),
          )
        ],
      ),
    );
  }
}
