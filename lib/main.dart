import 'package:algodynamic/screens/splash/splash_screen.dart';
import 'package:algodynamic/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: appcolors.blackColor,
      systemNavigationBarIconBrightness: Brightness.light,
    ));

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        checkboxTheme: CheckboxThemeData(
          checkColor: WidgetStatePropertyAll(appcolors.appColor),
        ),
        scaffoldBackgroundColor: appcolors.blackColor,
        primaryColor: appcolors.blackColor,
        appBarTheme: AppBarTheme(backgroundColor: appcolors.blackColor),
        fontFamily: "Poppins",
        colorScheme: ColorScheme.fromSeed(seedColor: appcolors.appColor),
        useMaterial3: false,
        splashFactory: NoSplash.splashFactory,
      ),
      home: const SplashScreen(),
    );
  }
}
