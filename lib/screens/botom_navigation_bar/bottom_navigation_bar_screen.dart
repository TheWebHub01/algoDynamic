import 'package:algodynamic/screens/Bullish%20Swings/bullish_swings_screen.dart';
import 'package:algodynamic/screens/home/home_screen.dart';
import 'package:algodynamic/screens/profile/profile_screen.dart';
import 'package:algodynamic/screens/scanner/scanner_screen.dart';
import 'package:algodynamic/screens/strategies/strategies_screen.dart';
import 'package:algodynamic/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    if (index == 2) {
      return;
    }
    setState(() {
      _selectedIndex = index;
    });
  }

  List screens = [
    const HomeScreen(),
    const StrategiesScreen(),
    const ScannerScreen(),
    const BullishSwingsScreen(),
    const ProfileScreen(),
  ];
  List<bool> isTappedList = [];

  List scannersList = [
    {
      'title': "Order Book",
      'icon': "assets/svg/orderBook.svg",
      'fillicon': "assets/svg/order_fill.svg",
    },
    {
      'title': "Positions",
      'icon': "assets/svg/position.svg",
      'fillicon': "assets/svg/position_fill.svg",
    },
    {
      'title': "Deployed Strategies",
      'icon': "assets/svg/deployed_strategies.svg",
      'fillicon': "assets/svg/deployed_strategies_fill.svg",
    },
    {
      'title': "Live Scanners",
      'icon': "assets/svg/live_scanners.svg",
      'fillicon': "assets/svg/live_scanners_fill.svg",
    },
    {
      'title': "Notifications",
      'icon': "assets/svg/notification.svg",
      'fillicon': "assets/svg/notification_fill.svg",
    },
    {
      'title': "Discover Scanners",
      'icon': "assets/svg/discover_scanners.svg",
      'fillicon': "assets/svg/discover_scanners_fill.svg",
    },
    {
      'title': "Discover Strategies",
      'icon': "assets/svg/discover_strategies.svg",
      'fillicon': "assets/svg/discover_strategies_fill.svg",
    },
    {
      'title': "Help",
      'icon': "assets/svg/help.svg",
      'fillicon': "assets/svg/help_fill.svg",
    },
  ];
  @override
  void initState() {
    super.initState();
    isTappedList = List.generate(scannersList.length, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
          ),
          border: Border(
            top: BorderSide(
              color: Color(0xFF141414),
              width: 1.5,
            ),
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SvgPicture.asset(_selectedIndex == 0
                  ? "assets/svg/home_fill.svg"
                  : "assets/svg/home_unfill.svg"),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(_selectedIndex == 1
                  ? "assets/svg/strategies_fill.svg"
                  : "assets/svg/Strategies_unfill.svg"),
              label: 'Strategies',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                _selectedIndex == 2
                    ? "assets/svg/layers.svg"
                    : "assets/svg/layers.svg",
                color: Colors.transparent,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(_selectedIndex == 3
                  ? "assets/svg/scanner_fill.svg"
                  : "assets/svg/scanner_unfill.svg"),
              label: 'Scanner',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(_selectedIndex == 4
                  ? "assets/svg/profile_fill.svg"
                  : "assets/svg/profile_unfill.svg"),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: appcolors.whiteColor,
          unselectedItemColor: appcolors.greyColor,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        backgroundColor: appcolors.appColor,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (BuildContext context) {
              double sheetHeight = 100 + scannersList.length * 60;
              return StatefulBuilder(
                builder: (context, setState) {
                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    height: sheetHeight,
                    decoration: BoxDecoration(
                      color: Color(0xff080808),
                      border: Border(
                          top:
                              BorderSide(color: appcolors.greyColor, width: 2)),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 20),
                        const Center(
                          child: Text(
                            "Do More with Trading",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                        const SizedBox(height: 15),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                for (int j = 0; j < scannersList.length; j++)
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        for (int i = 0;
                                            i < isTappedList.length;
                                            i++) {
                                          isTappedList[i] = false;
                                        }
                                        isTappedList[j] = true;
                                      });
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 5),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: const Color(0xff292929)),
                                        borderRadius: BorderRadius.circular(12),
                                        color: const Color(0xFF384236)
                                            .withOpacity(0.3),
                                      ),
                                      child: Row(
                                        children: [
                                          SvgPicture.asset(
                                            isTappedList[j]
                                                ? scannersList[j]['fillicon']
                                                : scannersList[j]['icon'],
                                          ),
                                          const SizedBox(width: 10),
                                          Text(
                                            scannersList[j]['title'],
                                            style: const TextStyle(
                                                color: Colors.white),
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
                  );
                },
              );
            },
          );
        },
        child: SvgPicture.asset("assets/svg/layers.svg"),
      ),
    );
  }
}
