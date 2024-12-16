import 'package:algodynamic/screens/botom_navigation_bar/bottom_navigation_bar_screen.dart';
import 'package:algodynamic/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to BottomNavigationBarScreen after 3 seconds
    Future.delayed(const Duration(seconds: 3), () {
      // Replace current screen with BottomNavigationBarScreen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => const BottomNavigationBarScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: SvgPicture.asset(
                "assets/svg/spalsh_background.svg",
              )),
          Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/svg/spash_icon.svg"),
              const SizedBox(
                height: 30,
              ),
              Text(
                "AlgoDynamic",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: appcolors.appColor),
              )
            ],
          )),
          Padding(
            padding: const EdgeInsets.only(bottom: 0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Lottie.asset('assets/svg/DsGmOYtnGB.json', height: 150),

              // Image.asset("assets/png/algo-loader.gif")
            ),
          )
        ],
      ),
    );
  }
}
