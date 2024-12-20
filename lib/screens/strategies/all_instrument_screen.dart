import 'package:algodynamic/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllInstrumentScreen extends StatefulWidget {
  const AllInstrumentScreen({super.key});

  @override
  State<AllInstrumentScreen> createState() => _AllInstrumentScreenState();
}

class _AllInstrumentScreenState extends State<AllInstrumentScreen> {
  List stockList = ['Nifty 50', 'Nifty 100 P1', 'Nifty 100 P2'];
  bool? value = false; // Initialize as nullable bool for null safety

  List<Map<String, dynamic>> instrumentList = [
    {
      'title': 'BAJAJ-AUTO',
      'subtitle': 'NSE',
      'isSelected': false,
    },
    {
      'title': 'BAJAJFINANCE',
      'subtitle': 'NSE',
      'isSelected': false,
    },
    {
      'title': 'BAJAJFINSV',
      'subtitle': 'NSE',
      'isSelected': false,
    },
    {
      'title': 'BPCL',
      'subtitle': 'NSE',
      'isSelected': false,
    },
    {
      'title': 'BHARATIARTL',
      'subtitle': 'NSE',
      'isSelected': false,
    },
    {
      'title': 'BRITANNIA',
      'subtitle': 'NSE',
      'isSelected': false,
    },
    {
      'title': 'COALINDIA',
      'subtitle': 'NSE',
      'isSelected': false,
    },
    {
      'title': 'DRREDDY',
      'subtitle': 'NSE',
      'isSelected': false,
    },
    {
      'title': 'ELCHERMOT',
      'subtitle': 'NSE',
      'isSelected': false,
    },
    {
      'title': 'GRASIM',
      'subtitle': 'NSE',
      'isSelected': false,
    },
    {
      'title': 'HDFCLIFE',
      'subtitle': 'NSE',
      'isSelected': false,
    },
    {
      'title': 'HEROMOTOCO',
      'subtitle': 'NSE',
      'isSelected': false,
    },
    {
      'title': 'HINDUNILVR',
      'subtitle': 'NSE',
      'isSelected': false,
    },
    {
      'title': 'ITC',
      'subtitle': 'NSE',
      'isSelected': false,
    },
    {
      'title': 'INDUSINDBK',
      'subtitle': 'NSE',
      'isSelected': false,
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
          "Instruments",
          style: TextStyle(fontSize: 17, color: appcolors.whiteColor),
        ),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: SvgPicture.asset("assets/svg/close.svg"))
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Add Stocks eg: SBIN",
                  hintStyle: TextStyle(fontSize: 11, color: Color(0xFFABABAB)),
                  filled: true,
                  fillColor: Color(0xFF0E0E0E),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Color(0xFF292929))),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Color(0xFF292929))),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Color(0xFF292929))),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Color(0xFF292929)))),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                for (int i = 0; i < 3; i++)
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Color(0xFF292929))),
                    child: Text(
                      stockList[i],
                      style:
                          TextStyle(color: appcolors.whiteColor, fontSize: 10),
                    ),
                  ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  for (int i = 0; i < instrumentList.length; i++)
                    Row(
                      children: [
                        Checkbox(
                          fillColor:
                              const WidgetStatePropertyAll(Color(0xFF292929)),
                          activeColor: appcolors.appColor,
                          value: value,
                          onChanged: (bool? newValue) {
                            setState(() {
                              value = newValue;
                            });
                          },
                        ),
                        Text(
                          instrumentList[i]['title'],
                          style: const TextStyle(
                              color: Color(0xFFABABAB), fontSize: 18),
                        )
                      ],
                    ),
                
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
