import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nukleushive_app/data/constants/app_assets.dart';
import 'package:nukleushive_app/data/constants/app_colors.dart';

class NotificationsNoneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //   statusBarColor: Colors.transparent,
    // ));

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
      //       'Notifications',
      //       style: TextStyle(
      //         color: Color(0xFF002204),
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
          'Notifications',
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

      //extendBodyBehindAppBar: true,
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  AppAssets.noNotificationImage,
                  fit: BoxFit.cover,
                  // height: 131,
                  // width: 490,
                ),
                Positioned(
                  // top: 20,
                  top: 360,
                  // left: 0,
                  left: 50,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Image.asset(
                      //   AppAssets.profileScreenImage2,
                      //   fit: BoxFit.cover,
                      // ),
                      Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Refer Once
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "No Notifications!",
                            style: TextStyle(
                              fontSize: 15,
                              // color: Color(0xFF002204),
                              color: AppColors.onPrimaryContainer,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "Visit other pages to add things here!",
                            style: TextStyle(
                              fontSize: 15,
                              // color: Color(0xFF002204),
                              color: AppColors.onPrimaryContainer,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Visit Dashboard > ",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  // color: Color(0xFF499359),
                  color: AppColors.primary,
                ),
              ),
            ),
          ],
        ),
      ),
      // Bottom Nav Bar

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
              AppAssets.notificationsSelectedNavIconImage,
            ),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              AppAssets.settingsNavIconImage,
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
