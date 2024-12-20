import 'package:algodynamic/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InstrumentAddScreen extends StatefulWidget {
  const InstrumentAddScreen({super.key});

  @override
  State<InstrumentAddScreen> createState() => _InstrumentAddScreenState();
}

class _InstrumentAddScreenState extends State<InstrumentAddScreen> {
  TextEditingController instumentController = TextEditingController();

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
          style: TextStyle(fontSize: 20, color: appcolors.whiteColor),
        ),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pop(
                  context,
                );
              },
              child: SvgPicture.asset("assets/svg/close.svg")),
        ],
      ),
      body: Column(
        children: [
          TextField(
            controller: instumentController,
            keyboardType: TextInputType.number,
            style: const TextStyle(color: Colors.white), // Text color
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
              filled: true,
              fillColor: Colors.black, // TextField background color
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: Colors.white38, // Border color
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: Colors.white38, // Border color when enabled
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: Colors.white, // Border color when focused
                  width: 1.5,
                ),
              ),
              hintText: '1', // Default value
              hintStyle: const TextStyle(color: Colors.white54),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
                child: Column(children: [
              for (int i = 0; i < instrumentList.length; i++)
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: instrumentList[i]['isSelected'],
                        onChanged: (value) {
                          setState(() {
                            instrumentList[i]['isSelected'] =
                                !instrumentList[i]['isSelected'];
                          });
                        },
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            instrumentList[i]['title'],
                            style: TextStyle(color: appcolors.whiteColor),
                          ),
                          Text(
                            instrumentList[i]['subtitle'],
                            style: TextStyle(color: appcolors.greyColor),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
            ])),
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
                "Save & Run Backtest",
                style: TextStyle(fontSize: 16, color: appcolors.blackColor),
              ),
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
    //  ),
    // );
  }
}
