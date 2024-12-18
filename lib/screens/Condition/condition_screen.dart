import 'package:algodynamic/screens/Condition/condition_details_screen.dart';
import 'package:algodynamic/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ConditionScreen extends StatefulWidget {
  const ConditionScreen({super.key});

  @override
  State<ConditionScreen> createState() => _ConditionScreenState();
}

class _ConditionScreenState extends State<ConditionScreen> {
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
          "Condition",
          style: TextStyle(fontSize: 20, color: appcolors.whiteColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Conditions",
              style: TextStyle(fontSize: 16, color: appcolors.whiteColor),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              decoration: BoxDecoration(
                  color: const Color(0xFF0E0E0E),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: const Color(0xFF292929))),
              child: Row(
                children: [
                  const Text(
                    "Stock Matches All of the Filters below",
                    style: TextStyle(fontSize: 12, color: Color(0xFFABABAB)),
                  ),
                  const Spacer(),
                  SvgPicture.asset("assets/svg/copy.svg"),
                  const SizedBox(
                    width: 6,
                  ),
                  SvgPicture.asset("assets/svg/delete.svg"),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => const ConditionDetailsScreen(
                //         title: "Condition",
                //       ),
                //     ));
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                decoration: BoxDecoration(
                    color: const Color(0xFF0E0E0E),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: const Color(0xFF292929))),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/svg/plus.svg",
                      color: Color(0xffABABAB),
                    ),
                    const Text(
                      "Add New Condition",
                      style: TextStyle(fontSize: 12, color: Color(0xFFABABAB)),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
