import 'package:algodynamic/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ConditionEditScreen extends StatefulWidget {
  final String title;

  const ConditionEditScreen({super.key, required this.title});

  @override
  State<ConditionEditScreen> createState() => _ConditionEditScreenState();
}

class _ConditionEditScreenState extends State<ConditionEditScreen> {
  bool isSwitched = false;

  List conditioneditList = [
    {
      'title': 'Period max (  40 ,1 Day High(-1)',
      'progress': 'Lower Than',
      'title2': 'Period max (  40 ,1 Day High(-41)',
      'title3': 'Number',
      'percentage': '1.02',
    },
    {
      'title': 'Period max (  40 ,1 Day High(-1)',
      'progress': 'Lower Than',
      'title2': 'Period max (  40 ,1 Day High(-41)',
      'title3': 'Number',
      'percentage': '0.98',
    },
    {
      'title': 'Period max (  40 ,1 Day High(-1)',
      'progress': 'Lower Than',
      'title2': 'Period max (  40 ,1 Day High(-41)',
      'title3': '',
      'percentage': '',
    },
  ];
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Conditions",
                      style:
                          TextStyle(fontSize: 16, color: appcolors.whiteColor),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 15),
                      decoration: BoxDecoration(
                          color: const Color(0xFF0E0E0E),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: const Color(0xFF292929))),
                      child: Row(
                        children: [
                          const Text(
                            "Stock Matches All of the Filters below",
                            style: TextStyle(
                                fontSize: 12, color: Color(0xFFABABAB)),
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
                    for (int i = 0; i < conditioneditList.length; i++)
                      Container(
                        width: double.infinity,
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                            color: const Color(0xFF0E0E0E),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: const Color(0xFF292929))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  conditioneditList[i]['title'],
                                  style: TextStyle(
                                      color: appcolors.appColor, fontSize: 13),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                SvgPicture.asset("assets/svg/plus.svg"),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  ')',
                                  style: TextStyle(
                                      color: appcolors.appColor, fontSize: 13),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              conditioneditList[i]['progress'],
                              style: TextStyle(
                                  color: appcolors.redColor, fontSize: 13),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  conditioneditList[i]['title2'],
                                  style: TextStyle(
                                      color: appcolors.appColor, fontSize: 13),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                SvgPicture.asset("assets/svg/plus.svg"),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  ')  *',
                                  style: TextStyle(
                                      color: appcolors.appColor, fontSize: 12),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  conditioneditList[i]['title3'] == ''
                                      ? ''
                                      : conditioneditList[i]['title3'],
                                  style: TextStyle(
                                      color: appcolors.appColor, fontSize: 12),
                                ),
                                Text(
                                  conditioneditList[i]['percentage'] == ''
                                      ? ''
                                      : conditioneditList[i]['percentage'],
                                  style: TextStyle(
                                      color: appcolors.appColor, fontSize: 12),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Spacer(),
                                Switch(
                                  value: isSwitched,
                                  onChanged: (value) {
                                    setState(() {
                                      isSwitched = value;
                                      print(isSwitched);
                                    });
                                  },
                                  inactiveTrackColor:
                                      appcolors.whiteColor.withOpacity(0.3),
                                  activeTrackColor: appcolors.whiteColor,
                                  activeColor: appcolors.appColor,
                                ),
                                SvgPicture.asset("assets/svg/plus.svg"),
                                SvgPicture.asset(
                                  "assets/svg/copy.svg",
                                  color: appcolors.whiteColor,
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                SvgPicture.asset(
                                  "assets/svg/delete.svg",
                                  color: appcolors.whiteColor,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      decoration: BoxDecoration(
                          color: const Color(0xFF0E0E0E),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: const Color(0xFF292929))),
                      child: Row(
                        children: [
                          SvgPicture.asset("assets/svg/plus.svg"),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Add",
                            style: TextStyle(
                                fontSize: 16, color: appcolors.redColor),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 50,
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
                  borderRadius: BorderRadius.circular(10),
                  color: appcolors.appColor),
              child: Center(
                child: Text(
                  "Okay",
                  style: TextStyle(fontSize: 16, color: appcolors.blackColor),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
