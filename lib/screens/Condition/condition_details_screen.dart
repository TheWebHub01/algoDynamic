import 'package:algodynamic/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ConditionDetailsScreen extends StatefulWidget {
  final String title;
  const ConditionDetailsScreen({super.key, required this.title});

  @override
  State<ConditionDetailsScreen> createState() => _ConditionDetailsScreenState();
}

class _ConditionDetailsScreenState extends State<ConditionDetailsScreen> {
  List indicatorsList = [
    {
      'title': "Phase Power Moving Average",
      'subtitle': "Phase Power Moving Average",
    },
    {
      'title': "Money Flow Index",
      'subtitle': "Money Flow Index",
    },
    {
      'title': "Vwap Moving Average",
      'subtitle': "Vwap Moving Average",
    },
    {
      'title': "UIcer",
      'subtitle': "UIcer",
    },
    {
      'title': "Know Sure Thing",
      'subtitle': "Know Sure Thing",
    },
    {
      'title': "-DI",
      'subtitle': "-DI, Minus Directional Index",
    },
    {
      'title': "Tsi",
      'subtitle': "True strength indicator",
    },
    {
      'title': "Time Series Forecast",
      'subtitle': "Time Series Forecast",
    },
    {
      'title': "NATAR",
      'subtitle': "Normalised average true range",
    },
    {
      'title': "TR",
      'subtitle': "True range",
    },
    {
      'title': "Mfi Moving Average",
      'subtitle': "Money Flow Index Moving average",
    },
    {
      'title': "ADX",
      'subtitle': "Average Directional Index",
    },
    {
      'title': "Stochastic",
      'subtitle': "Stochastic",
    },
    {
      'title': "WMA",
      'subtitle': "Weighted moving average",
    },
    {
      'title': "TII",
      'subtitle': "Trend Intensity Index",
    },
    {
      'title': "Choppiness Index Moving Average",
      'subtitle': "Choppiness Index Moving Average",
    },
    {
      'title': "Linear regression forecast",
      'subtitle': "Linear regression forecast indicator",
    },
    {
      'title': "Open Interest Moving Average",
      'subtitle': "Open Interest Moving Average",
    },
    {
      'title': "MOM",
      'subtitle': "Momentum indicator",
    },
    {
      'title': "Bollinger %B",
      'subtitle': "Bollinger %B",
    },
    {
      'title': "Nvi",
      'subtitle': "Negative Volume Index",
    },
    {
      'title': "Chande Momentum Oscillator",
      'subtitle': "Chande Momentum Oscillator",
    },
    {
      'title': "EMA",
      'subtitle': "Exponential moving average",
    },
    {
      'title': "Option greeks",
      'subtitle': "Option Greeks",
    },
    {
      'title': "Vortex Indicator",
      'subtitle': "Vortex Indicator",
    },
    {
      'title': "Standard deviation",
      'subtitle': "Standard deviation",
    },
    {
      'title': "Detrended Price Oscillator",
      'subtitle': "Detrended Price Oscillator",
    },
    {
      'title': "Kilnger Volume Oscillator",
      'subtitle': "Kilnger Volume Oscillator",
    },
    {
      'title': "True Range Moving Average",
      'subtitle': "True Range Moving Average",
    },
    {
      'title': "Central pivot range",
      'subtitle': "Central pivot range",
    },
    {
      'title': "McGinley Dynamic Indicator",
      'subtitle': "McGinley Dynamic Indicator",
    },
    {
      'title': "Vortex Moving Average",
      'subtitle': "Vortex Moving Average",
    },
    {
      'title': "Acc Dist Moving Average",
      'subtitle': "Accumulation Distibution Moving Average",
    },
    {
      'title': "Supertrend",
      'subtitle': "Supertrend",
    },
    {
      'title': "Trade Volume Index",
      'subtitle': "Trade Volume Index",
    },
    {
      'title': "Pvi",
      'subtitle': "Positive Volume Index",
    },
    {
      'title': "Close",
      'subtitle': "Close price",
    },
    {
      'title': "Twiggs Money Flow",
      'subtitle': "Twiggs Money Flow indicator",
    },
    {
      'title': "Moving average",
      'subtitle': "Moving average",
    },
    {
      'title': "Median Price Moving Average",
      'subtitle': "Median Price Moving Average",
    },
    {
      'title': "Moving average volume",
      'subtitle': "Moving average volume",
    },
    {
      'title': "Cci Moving Average",
      'subtitle': "Commodity Channel Index Moving Average",
    },
    {
      'title': "Choppiness Index",
      'subtitle': "Choppiness Index",
    },
    {
      'title': "Price rate of change",
      'subtitle': "Price rate of change",
    },
    {
      'title': "SMA",
      'subtitle': "Simple moving average",
    },
    {
      'title': "Stochastic Momentum Index",
      'subtitle': "Stochastic Momentum Index",
    },
  ];

  String selectedtitle = "";
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
          style: TextStyle(fontSize: 20, color: appcolors.whiteColor),
        ),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pop(context, selectedtitle);
              },
              child: SvgPicture.asset("assets/svg/close.svg")),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              decoration: BoxDecoration(
                  color: const Color(0xFF0E0E0E),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: const Color(0xFF292929))),
              child: Row(
                children: [
                  Text(
                    selectedtitle.isEmpty
                        ? "What would you like to add ?"
                        : selectedtitle,
                    style:
                        const TextStyle(fontSize: 12, color: Color(0xFFABABAB)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Indicators",
              style: TextStyle(fontSize: 16, color: appcolors.whiteColor),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    for (int j = 0; j < indicatorsList.length; j++)
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedtitle = indicatorsList[j]['title'];
                          });
                          print(
                              'Selected Title: ${indicatorsList[j]['title']}');
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xff292929)),
                            borderRadius: BorderRadius.circular(12),
                            color: const Color(0xFF384236).withOpacity(0.3),
                          ),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    indicatorsList[j]['title'],
                                    style: TextStyle(
                                        color: appcolors.whiteColor,
                                        fontSize: 14),
                                  ),
                                  Text(
                                    indicatorsList[j]['subtitle'],
                                    style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        color: appcolors.greyColor,
                                        fontSize: 11),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
