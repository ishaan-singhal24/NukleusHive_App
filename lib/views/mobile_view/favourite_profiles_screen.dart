// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nukleushive_app/data/constants/app_assets.dart';
import 'package:nukleushive_app/data/constants/app_colors.dart';
import 'package:nukleushive_app/views/mobile_view/bottom_nav_icons/founders_dashboard_nav_icon.dart';
import 'package:nukleushive_app/views/mobile_view/bottom_nav_icons/interview_nav_icon.dart';
import 'package:nukleushive_app/views/mobile_view/bottom_nav_icons/notification_nav_icon.dart';
import 'package:nukleushive_app/views/mobile_view/bottom_nav_icons/settings_nav_icon.dart';
import 'package:nukleushive_app/views/mobile_view/common/custom_button.dart';
import 'package:nukleushive_app/main.dart';
import 'package:nukleushive_app/views/mobile_view/founders_dashboard_screen.dart';

class FavouriteProfilesScreen extends StatefulWidget {
  @override
  State<FavouriteProfilesScreen> createState() =>
      _FavouriteProfilesScreenState();
}

class _FavouriteProfilesScreenState extends State<FavouriteProfilesScreen> {
  @override
  Widget build(BuildContext context) {
    // Media Query

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor:
          // Color(0xFFFCFDF6),
          AppColors.background,
      appBar: AppBar(
        backgroundColor:
            // Color(0xFFFFFFFF),
            AppColors.onPrimary,
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Favourite Profiles',
            style: TextStyle(
              // color: Color(0xFF002204),
              color: AppColors.onPrimaryContainer,
              fontFamily: "Poppins",
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        titleTextStyle: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Handle search icon pressed
            },
            icon: Image.asset(
              AppAssets.searchIconImage,
              fit: BoxFit.cover,
            ),
          ),
          IconButton(
            onPressed: () {
              // Handle filter icon pressed
            },
            icon: Image.asset(
              AppAssets.filterIconImage,
              fit: BoxFit.cover,
            ),
          ),
        ],
        // toolbarHeight: 65,
      ),

      //extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: 16,
            right: 16,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 19,
              ),

              // 1st

              FavProfileCard(
                screenWidth: screenWidth,
              ),
              SizedBox(
                height: 13,
              ),

              // 2nd

              FavProfileCard(
                screenWidth: screenWidth,
              ),
              SizedBox(
                height: 13,
              ),

              // 3rd

              FavProfileCard(
                screenWidth: screenWidth,
              ),
              SizedBox(
                height: 13,
              ),

              // 4th

              FavProfileCard(
                screenWidth: screenWidth,
              ),
              SizedBox(
                height: 13,
              ),

              // 5th

              FavProfileCard(
                screenWidth: screenWidth,
              ),
              SizedBox(
                height: 13,
              ),

              // 6th

              FavProfileCard(
                screenWidth: screenWidth,
              ),
              SizedBox(
                height: 13,
              ),
            ],
          ),
        ),
      ),

      // Bottom Nav Bar

      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: FoundersDashboardNavIcon(),
            // Image.asset(
            //   AppAssets.dashboardNavIconImage,
            // ),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon:
                //  Image.asset(
                //   AppAssets.interviewNavIconImage,
                // ),
                InterviewNavIcon(),
            label: 'Interview',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              AppAssets.favSelectedNavIconImage,
            ),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: NotificationNavIcon(),
            // Image.asset(
            //   AppAssets.notificationsNavIconImage,
            // ),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: SettingsNavIcon(),
            // Image.asset(
            //   AppAssets.settingsNavIconImage,
            // ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

// FavProfileCard(final double? screenWidth) {
//   return FavProfileCard();
// }

class FavProfileCard extends ConsumerWidget {
  final double? screenWidth;
  const FavProfileCard({
    Key? key,
    this.screenWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(
        // left: 17,
        top: 15,
      ),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.amber,
              blurRadius: 0.1,
            ),
          ],
          // color: Color(0xFFFFFFFF),
          color: AppColors.onPrimary,
          // borderRadius: BorderRadius.circular(
          //   10,
          // ),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          // borderRadius: BorderRadius.only(
          //   bottomLeft: Radius.circular(
          //     10,
          //   ),
          // ),
        ),
        child: Column(
          children: [
            Container(
              // decoration: BoxDecoration(
              //   boxShadow: [
              //     BoxShadow(
              //       color: Colors.amber,
              //       blurRadius: 0.1,
              //     ),
              //   ],
              //   color: Color(0xFFFFFFFF),
              //   borderRadius: BorderRadius.circular(
              //     10,
              //   ),
              // ),
              child: Padding(
                padding: const EdgeInsets.only(
                  // left: 17,
                  top: 15,
                  // right: 15,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 5,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                            ),
                            child: Row(
                              children: [
                                Image.asset(
                                  AppAssets.favouriteProfilesScreenImage1,
                                  fit: BoxFit.cover,
                                  // height: 131,
                                  // width: 390,
                                ),
                                SizedBox(
                                  width: 12.18,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "John Doe",
                                      style: TextStyle(
                                        fontSize: 16,
                                        // color: Color(0xFF499359),
                                        color: AppColors.primary,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      "CTO, XYZ Coorporation",
                                      style: TextStyle(
                                        fontSize: 12,
                                        // color: Color(0xFF499359),
                                        color: AppColors.primary,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          // SizedBox(
                          //   width: 12.18,
                          // ),
                          // Column(
                          //   crossAxisAlignment: CrossAxisAlignment.start,
                          //   children: [
                          //     Text(
                          //       "John Doe",
                          //       style: TextStyle(
                          //         fontSize: 16,
                          //         // color: Color(0xFF499359),
                          //         color: AppColors.primary,
                          //         fontFamily: 'Poppins',
                          //         fontWeight: FontWeight.w700,
                          //       ),
                          //     ),
                          //     Text(
                          //       "CTO, XYZ Coorporation",
                          //       style: TextStyle(
                          //         fontSize: 12,
                          //         // color: Color(0xFF499359),
                          //         color: AppColors.primary,
                          //         fontFamily: 'Poppins',
                          //         fontWeight: FontWeight.w500,
                          //       ),
                          //     ),
                          //   ],
                          // ),
                          SizedBox(
                            width: 100,
                          ),
                          Image.asset(
                            AppAssets.favouriteProfilesScreenImage2,
                            fit: BoxFit.cover,
                            // height: 131,
                            // width: 390,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 17),
                      child: Text(
                        "I possess a strong background in computer science, programming, and software development.",
                        style: TextStyle(
                          fontSize: 12,
                          // color: Color(0xFF72796F),
                          color: AppColors.outline,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    // CustomButton(
                    //   text: "View Profile",
                    //   onPressed: () {},
                    //   color: Color(0xFF499359),
                    //   width: sw,
                    //   height: 28,
                    // ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.amber,
                    blurRadius: 0.1,
                  ),
                ],
                // color: Color(0xFFFFFFFF),
                color: AppColors.onPrimary,
                // borderRadius: BorderRadius.circular(
                //   10,
                // ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(
                    10,
                  ),
                  bottomRight: Radius.circular(
                    10,
                  ),
                ),
              ),
              child: CustomButton(
                text: "View Profile",
                onPressed: () {
                  ref.read(navigationProvider.notifier).state =
                      'othersCoFoundersProfileScreen';
                },
                // color: Color(0xFF499359),
                color: AppColors.primary,
                width: screenWidth,
                height: 28,
                radius: 0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
