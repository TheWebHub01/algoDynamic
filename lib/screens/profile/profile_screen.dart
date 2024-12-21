import 'package:algodynamic/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Profile",
          style: TextStyle(fontSize: 17, color: appcolors.whiteColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Name",
                style: TextStyle(fontSize: 15, color: appcolors.whiteColor),
              ),
              const SizedBox(
                height: 7,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color(0xFF0E0E0E),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: const Color(0xFF292929))),
                child: const Text(
                  "Smit Kakadiya",
                  style: TextStyle(color: Color(0xFFABABAB), fontSize: 12),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Email",
                style: TextStyle(fontSize: 15, color: appcolors.whiteColor),
              ),
              const SizedBox(
                height: 7,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color(0xFF0E0E0E),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: const Color(0xFF292929))),
                child: const Text(
                  "Smitkakadiya@live.com",
                  style: TextStyle(color: Color(0xFFABABAB), fontSize: 12),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Secondary Email",
                style: TextStyle(fontSize: 15, color: appcolors.whiteColor),
              ),
              const SizedBox(
                height: 7,
              ),
              TextField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 10),
                    filled: true,
                    hintText: "Secondary Email",
                    hintStyle:
                        const TextStyle(fontSize: 12, color: Color(0xFFABABAB)),
                    fillColor: const Color(0xFF0E0E0E),
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Color(0xFF292929))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Color(0xFF292929))),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Color(0xFF292929))),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide:
                            const BorderSide(color: Color(0xFF292929)))),
              ),
              // Container(
              //   padding:
              //       const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
              //   width: double.infinity,
              //   decoration: BoxDecoration(
              //       color: const Color(0xFF0E0E0E),
              //       borderRadius: BorderRadius.circular(8),
              //       border: Border.all(color: const Color(0xFF292929))),
              //   child: const Text(
              //     "Secondary Email",
              //     style: TextStyle(color: Color(0xFFABABAB), fontSize: 12),
              //   ),
              // ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Phone Number",
                style: TextStyle(fontSize: 15, color: appcolors.whiteColor),
              ),
              const SizedBox(
                height: 7,
              ),
              TextField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 10),
                    filled: true,
                    hintText: "Register your phone number",
                    hintStyle:
                        const TextStyle(fontSize: 12, color: Color(0xFFABABAB)),
                    fillColor: const Color(0xFF0E0E0E),
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Color(0xFF292929))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Color(0xFF292929))),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Color(0xFF292929))),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide:
                            const BorderSide(color: Color(0xFF292929)))),
              ),

              const SizedBox(
                height: 15,
              ),
              Text(
                "Limits",
                style: TextStyle(fontSize: 15, color: appcolors.whiteColor),
              ),
              const SizedBox(
                height: 7,
              ),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    backgroundColor: Colors
                        .transparent, // Transparent to customize everything
                    builder: (context) {
                      return Container(
                        decoration: const BoxDecoration(
                            color: Color(0xFF080808), // Background color
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40),
                            ),
                            border: Border(
                                top: BorderSide(
                              color: Color(0xFF292929), // Background color
                            ))),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 5),
                              Text(
                                "Strategies",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: appcolors.whiteColor,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                height: 1,
                                width: double.infinity,
                                color: Color(0xFF292929),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Text(
                                    "Live Deployment",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xFFABABAB),
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "0/5",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: appcolors.whiteColor,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Text(
                                    "Virtual Deployment",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xFFABABAB),
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "0/15",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: appcolors.whiteColor,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Text(
                                    "Dynamic Contract Backtest",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xFFABABAB),
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "0/50",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: appcolors.whiteColor,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Text(
                                "Total",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: appcolors.whiteColor,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                height: 1,
                                width: double.infinity,
                                color: Color(0xFF292929),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Text(
                                    "Live Scanners",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xFFABABAB),
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "0/5",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: appcolors.whiteColor,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color(0xFF0E0E0E),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: const Color(0xFF292929))),
                  child: Row(
                    children: [
                      Text(
                        "Scanners, Strategies and Backtest Limits",
                        style: TextStyle(
                            color: appcolors.whiteColor, fontSize: 12),
                      ),
                      const Spacer(),
                      SvgPicture.asset("assets/svg/next.svg")
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Trading Account",
                style: TextStyle(fontSize: 15, color: appcolors.whiteColor),
              ),
              const SizedBox(
                height: 7,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color(0xFF0E0E0E),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: const Color(0xFF292929))),
                child: const Row(
                  children: [
                    Text(
                      "Kite",
                      style: TextStyle(color: Color(0xFFABABAB), fontSize: 12),
                    ),
                    Spacer(),
                    Text(
                      "LHS827",
                      style: TextStyle(color: Color(0xFFABABAB), fontSize: 12),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Terms of Use",
                style: TextStyle(fontSize: 15, color: appcolors.whiteColor),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Privacy Policy",
                style: TextStyle(fontSize: 15, color: appcolors.whiteColor),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Logout",
                style: TextStyle(fontSize: 15, color: appcolors.whiteColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
