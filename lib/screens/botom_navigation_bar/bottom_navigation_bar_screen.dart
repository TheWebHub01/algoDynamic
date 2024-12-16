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
  Future<void> _onItemTapped(int index) async {
    if (index == 2) {
      // Do nothing when the middle button is tapped
      return;
    }
    setState(() {
      _selectedIndex = index;
    });
  }

  List screens = [
    HomeScreen(),
    StrategiesScreen(),
    ScannerScreen(),
    ScannerScreen(),
    ProfileScreen(),
  ];

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
              color: Color(0xFF141414), // Border color
              width: 1.5, // Border width
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
          selectedItemColor:
              appcolors.whiteColor, // Change selected label color
          unselectedItemColor:
              appcolors.greyColor, // Change unselected label color
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
        ),
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
        ),
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          backgroundColor: appcolors.appColor,
          onPressed: () {
            // Navigator.push(context,
            //     MaterialPageRoute(builder: (context) => AppoimentScreen()));
          },
          child: SvgPicture.asset("assets/svg/layers.svg"),
        ),
      ),
    );
  }
}
