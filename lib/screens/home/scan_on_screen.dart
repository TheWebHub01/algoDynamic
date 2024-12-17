import 'package:algodynamic/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ScanOnScreen extends StatefulWidget {
  const ScanOnScreen({
    super.key,
  });

  @override
  State<ScanOnScreen> createState() => _ScanOnScreenState();
}

class _ScanOnScreenState extends State<ScanOnScreen> {
  bool? value = false; // Initialize as nullable bool for null safety

  List scanonList = [
    'Nifty 50',
    'Nifty 100',
    'Nifty 500',
    'Nifty Monthly Options',
    'Nifty Weekly Options',
    'Nifty Next Week Options',
    'BankNifty Options',
    'FinNifty Options',
    'NFO Equitues',
    'INDICES',
    'NFO-Fut',
    'Energy',
    'Communication Services',
    'Materials',
    'Consumer Discretionary',
    'Consumer Staples',
    'Industrials'
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
          "Scan On",
          style: TextStyle(fontSize: 18, color: appcolors.whiteColor),
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: SvgPicture.asset("assets/svg/more_vert.svg"))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 0; i < scanonList.length; i++)
              Row(
                children: [
                  Checkbox(
                    fillColor: const WidgetStatePropertyAll(Color(0xFF292929)),
                    activeColor: appcolors.appColor,
                    value: value,
                    onChanged: (bool? newValue) {
                      setState(() {
                        value = newValue;
                      });
                    },
                  ),
                  Text(
                    scanonList[i],
                    style:
                        const TextStyle(color: Color(0xFFABABAB), fontSize: 18),
                  )
                ],
              )
          ],
        ),
      ),
    );
  }
}
