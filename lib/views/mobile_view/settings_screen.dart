import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:nukleushive_app/data/constants/app_assets.dart';
import 'package:nukleushive_app/data/constants/app_colors.dart';

import 'package:nukleushive_app/views/mobile_view/common/custom_button.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor:
          // Color(0xFFFCFDF6),
          AppColors.background,
      // appBar: AppBar(
      //   //backgroundColor: Colors.transparent,
      //   backgroundColor: Colors.white,
      //   shadowColor: Colors.transparent,
      //   title: Align(
      //     alignment: Alignment.centerLeft,
      //     child: Text(
      //       'Settings',
      //       style: TextStyle(
      //         // color: Color(0xFF002204),
      //         color: AppColors.onPrimaryContainer,
      //       ),
      //     ),
      //   ),
      //   titleTextStyle: TextStyle(
      //     fontFamily: 'Poppins',
      //     fontSize: 20,
      //     fontWeight: FontWeight.w700,
      //   ),
      //   toolbarHeight: 20,
      // ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        // shadowColor: Colors.transparent,
        title: Text(
          'Settings',
          // textAlign: TextAlign.center,
          style: TextStyle(
            // color: Color(0xFF002204),
            color: AppColors.onPrimaryContainer,
            fontFamily: 'Poppins',
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        // toolbarHeight: 56.0,
      ),
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Container(
                  // height: 663,
                  // width: 408,
                  // decoration: BoxDecoration(
                  // image: DecorationImage(
                  SizedBox(
                    height: 22,
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(
                      20,
                      19,
                      69,
                      19,
                    ),
                    child: Container(
                      color: Colors.white,
                      // width: 390,
                      width: screenWidth,
                      height: 89,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            AppAssets.settingsScreenImage1,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Suneet Nayyer",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset(
                                    AppAssets.settingsScreenImage2,
                                  ),
                                ],
                              ),
                              Text(
                                "xyzabc@gmail.com | 8979981423",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Poppins',
                                  // color: Color(0xFF52634F),
                                  color: AppColors.secondary,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  // ),
                  // ),
                  // ),
                  // SizedBox(
                  //   height: 24,
                  // ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    color: Colors.white,
                    width: 143,
                    // height: 24,
                    height: 30,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 16,
                          ),
                          child: Text(
                            "Accounts",
                            textAlign: TextAlign.left,
                            // textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontSize: 16,
                              // fontWeight: FontWeight.w500,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                              color: Color(0xFF000000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),

                  SettingsCard(
                    text: "Profile",
                    screenWidth: screenWidth,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  // CustomButton(
                  //   text: "Your Connections",
                  //   onPressed: () {},
                  //   width: 357,
                  //   height: 56,
                  //   trailingIcon: Icons.keyboard_arrow_right,
                  // ),
                  SettingsCard(
                    text: "Your Connections",
                    screenWidth: screenWidth,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  // CustomButton(
                  //   text: "Subscription",
                  //   onPressed: () {},
                  //   width: 357,
                  //   height: 56,
                  //   trailingIcon: Icons.keyboard_arrow_right,
                  // ),
                  SettingsCard(
                    text: "Subscription",
                    screenWidth: screenWidth,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  // CustomButton(
                  //   text: "Log out",
                  //   onPressed: () {},
                  //   width: 357,
                  //   height: 56,
                  //   trailingIcon: Icons.keyboard_arrow_right,
                  // ),
                  SettingsCard(
                    text: "Log out",
                    screenWidth: screenWidth,
                  ),
                  // SizedBox(
                  //   height: 258,
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              AppAssets.dashboardNavIconImage,
            ),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              AppAssets.interviewNavIconImage,
            ),
            label: 'Interview',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              AppAssets.favNavIconImage,
            ),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              AppAssets.notificationsNavIconImage,
            ),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              AppAssets.settingsNavIconSelectedImage,
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

class SettingsCard extends StatelessWidget {
  final String? text;
  final double? screenWidth;
  const SettingsCard({
    Key? key,
    this.text,
    this.screenWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return CustomButton(
    //   text: "Profile",
    //   onPressed: () {},
    //   width: 357,
    //   height: 56,
    //   trailingIcon: Icons.keyboard_arrow_right,
    // );
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
        ),
        child: Container(
          // width: 332,
          width: screenWidth,
          height: 56,
          decoration: BoxDecoration(
            // color: Color(0xFFFFFFFF),
            color: AppColors.onPrimary,
            borderRadius: BorderRadius.circular(11),
            boxShadow: [
              BoxShadow(
                color: Color(0xFF000000),
                // blurRadius: 0.1,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 28,
              // top: 23,
              right: 22,
              // 24,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text!,
                  style: TextStyle(
                    fontSize: 16,
                    // fontWeight: FontWeight.w700,
                    fontWeight: FontWeight.w500,
                    // fontFamily: "Poppins-Regular",
                    fontFamily: "Poppins-Regular",
                    // color: Color(0xFF002204),
                    color: AppColors.onPrimaryContainer,
                  ),
                ),
                Iconify(
                  MaterialSymbols.arrow_forward_ios,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
