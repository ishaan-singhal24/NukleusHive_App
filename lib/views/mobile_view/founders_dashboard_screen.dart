// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nukleushive_app/data/constants/app_assets.dart';
import 'package:nukleushive_app/data/constants/app_colors.dart';
import 'package:nukleushive_app/views/mobile_view/bottom_nav_icons/interview_nav_icon.dart';
import 'package:nukleushive_app/views/mobile_view/bottom_nav_icons/notification_nav_icon.dart';
import 'package:nukleushive_app/views/mobile_view/bottom_nav_icons/settings_nav_icon.dart';
import 'package:nukleushive_app/views/mobile_view/common/custom_button.dart';
import 'package:nukleushive_app/main.dart';
import 'package:nukleushive_app/views/mobile_view/bottom_nav_icons/fav_profile_nav_icon.dart';

class FoundersDashboardScreen extends StatefulWidget {
  @override
  State<FoundersDashboardScreen> createState() =>
      _FoundersDashboardScreenState();
}

class _FoundersDashboardScreenState extends State<FoundersDashboardScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor:
          // Color(0xFFFFFFFF),
          AppColors.onPrimary,
      // appBar: PreferredSize(
      //   preferredSize: const Size.fromHeight(94.0),
      //   child: AppBar(
      //     backgroundColor: Color(0xFFFFFFFF),
      //     // backgroundColor: Colors.green,
      //     shadowColor: Colors.transparent,
      //     title: Align(
      //       alignment: Alignment.centerLeft,
      //       child: Text(
      //         'Founders Dashboard',
      //         style: TextStyle(
      //           color: Color(0xFF002204),
      //         ),
      //       ),
      //     ),
      //     titleTextStyle: TextStyle(
      //       fontFamily: 'Poppins',
      //       fontSize: 20,
      //       fontWeight: FontWeight.w700,
      //     ),
      //     toolbarHeight: 20,
      //   ),
      // ),

      // Founders Dashboard App Bar
      appBar: AppBar(
        backgroundColor:
            // Color(0xFFFFFFFF),
            AppColors.onPrimary,
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Founders Dashboard',
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
              // Handle chat icon pressed
            },
            icon: Image.asset(
              AppAssets.chatIconImage2,
              fit: BoxFit.cover,
            ),
          ),
        ],
        // toolbarHeight: 65,
      ),

      //extendBodyBehindAppBar: true,
      body:
          //  SafeArea(
          // child:
          SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 17,
            right: 18,
            // Refer once
            // right: 18,
          ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 14,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Co-Founders",
                    style: TextStyle(
                      fontSize: 16,
                      // color: Color(0xFF52634F),
                      color: AppColors.secondary,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Image.asset(
                    AppAssets.filterIconImage,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              SizedBox(
                height: 14,
              ),

              // 1st
              FoundersDashboardCard(
                screenWidth: screenWidth,
              ),

              SizedBox(
                height: 14,
              ),

              // 2nd
              FoundersDashboardCard(
                screenWidth: screenWidth,
              ),

              SizedBox(
                height: 14,
              ),

              // 3rd
              FoundersDashboardCard(
                screenWidth: screenWidth,
              ),

              SizedBox(
                height: 14,
              ),

              // 4th
              FoundersDashboardCard(
                screenWidth: screenWidth,
              ),

              SizedBox(
                height: 14,
              ),

              // 5th
              FoundersDashboardCard(
                screenWidth: screenWidth,
              ),

              SizedBox(
                height: 14,
              ),

              // 6th
              FoundersDashboardCard(
                screenWidth: screenWidth,
              ),

              SizedBox(
                height: 14,
              ),

              // 7th
              FoundersDashboardCard(
                screenWidth: screenWidth,
              ),

              SizedBox(
                height: 14,
              ),

              // 8th
              FoundersDashboardCard(
                screenWidth: screenWidth,
              ),

              SizedBox(
                height: 14,
              ),

              // 9th
              FoundersDashboardCard(
                screenWidth: screenWidth,
              ),

              SizedBox(
                height: 14,
              ),

              // 10th

              FoundersDashboardCard(
                screenWidth: screenWidth,
              ),

              SizedBox(
                height: 45,
              ),

              // Page no.

              Padding(
                padding: const EdgeInsets.only(
                  // left: 81,
                  left: 65,
                ),
                child: Container(
                  child: Row(
                    children: [
                      Image.asset(
                        AppAssets.foundersDashboardScreenImage5,
                        fit: BoxFit.cover,
                        // height: 131,
                        // width: 390,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Image.asset(
                        AppAssets.foundersDashboardScreenImage6,
                        fit: BoxFit.cover,
                        // height: 131,
                        // width: 390,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Image.asset(
                        AppAssets.foundersDashboardScreenImage7,
                        fit: BoxFit.cover,
                        // height: 131,
                        // width: 390,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Image.asset(
                        AppAssets.foundersDashboardScreenImage8,
                        fit: BoxFit.cover,
                        // height: 131,
                        // width: 390,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Image.asset(
                        AppAssets.foundersDashboardScreenImage9,
                        fit: BoxFit.cover,
                        // height: 131,
                        // width: 390,
                      ),
                      // SizedBox(
                      //   height: 15,
                      // ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 83,
              ),

              Image.asset(
                AppAssets.foundersDashboardScreenImage4,
                fit: BoxFit.cover,
                // height: 131,
                // width: 390,
              ),

              SizedBox(
                height: 81,
              ),
            ],
          ),
        ),
      ),
      // ),

      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              AppAssets.dashboardSelectedNavIconImage,
            ),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: InterviewNavIcon(),
            label: 'Interview',
          ),
          BottomNavigationBarItem(
            icon: FavProfileNavIcon(),
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

// class InterviewNavIcon extends ConsumerWidget {
//   const InterviewNavIcon({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return GestureDetector(
//       onTap: () {
//         ref.read(navigationProvider.notifier).state =
//             'scheduledInterviewsUpcomingScreen';
//       },
//       child: Image.asset(
//         AppAssets.interviewNavIconImage,
//       ),
//     );
//   }
// }

// Widget FoundersDashboardCard() {
//   return FoundersDashboardCard();
// }

class FoundersDashboardCard extends StatelessWidget {
  final double? screenWidth;
  const FoundersDashboardCard({
    Key? key,
    this.screenWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.circular(
        //   10,
        // ),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xFF000000),
            // color: AppColors.onPrimary,
            blurRadius: 0.1,
          ),
        ],
        // color: Color(0xFFFFFFFF),
        color: AppColors.onPrimary,
      ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(
              //   10,
              // ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF000000),
                  blurRadius: 0.1,
                ),
              ],
              // color: Color(0xFF499359),
              color: AppColors.primary,
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 21,
                top: 13,
                right: 18,
                bottom: 13,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    AppAssets.foundersDashboardScreenImage1,
                    fit: BoxFit.cover,
                    // height: 131,
                    // width: 390,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Suneet Nayyer",
                        style: TextStyle(
                          fontSize: 20,
                          // color: Color(0xFFFFFFFF),
                          color: AppColors.onPrimary,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "Founder, XYZ Technologies",
                        style: TextStyle(
                          fontSize: 12.36,
                          // color: Color(0xFFFFFFFF),
                          color: AppColors.onPrimary,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              // color: Color(0xFF499359),
                              child: Row(
                                children: [
                                  Image.asset(
                                    AppAssets.foundersDashboardScreenImage2,
                                    fit: BoxFit.cover,
                                    // height: 131,
                                    // width: 390,
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    "New Delhi, India",
                                    style: TextStyle(
                                      fontSize: 12,
                                      // color: Color(0xFF002204),
                                      color: AppColors.onPrimaryContainer,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Image.asset(
                                    AppAssets.foundersDashboardScreenImage3,
                                    fit: BoxFit.cover,
                                    // height: 131,
                                    // width: 390,
                                  ),
                                ],
                              ),
                            ),
                            // SizedBox(
                            //   height: 11,
                            // ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 11,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                bottom: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Technology Stack",
                    style: TextStyle(
                      fontSize: 14,
                      // color: Color(0xFF002204),
                      color: AppColors.onPrimaryContainer,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          TechStackCard(
                            text: "Backend Developer",
                          ),
                          // Container(
                          //   width: 91,
                          //   height: 30,
                          //   padding: EdgeInsets.fromLTRB(12, 6, 12, 7),
                          //   decoration: BoxDecoration(
                          //     border: Border.all(
                          //       // color: Color(0xFFFFEFFC),
                          //       color: AppColors.trial1BgRed,
                          //       // width: 1,
                          //     ),
                          //     borderRadius: BorderRadius.circular(20),
                          //   ),
                          //   child: Text(
                          //     "Backend Developer",
                          //     style: TextStyle(
                          //       fontSize: 11,
                          //       fontWeight: FontWeight.w400,
                          //       fontFamily: 'Poppins',
                          //       // color: Color(0xFFAB218D),
                          //       color: AppColors.trial2DarkRed,
                          //     ),
                          //   ),
                          //   // color: Color(0xFFFFEFFC),
                          // ),
                          SizedBox(
                            width: 13,
                          ),
                          TechStackCard(
                            text: "Javascript",
                          ),
                          // Container(
                          //   width: 91,
                          //   height: 30,
                          //   padding: EdgeInsets.fromLTRB(12, 6, 12, 7),
                          //   decoration: BoxDecoration(
                          //     border: Border.all(
                          //       // color: Color(0xFFFFEFFC),
                          //       color: AppColors.trial1BgRed,
                          //       // width: 1,
                          //     ),
                          //     borderRadius: BorderRadius.circular(20),
                          //   ),
                          //   child: Text(
                          //     "Javascript",
                          //     style: TextStyle(
                          //       fontSize: 11,
                          //       fontWeight: FontWeight.w400,
                          //       fontFamily: 'Poppins',
                          //       // color: Color(0xFFAB218D),
                          //       color: AppColors.trial2DarkRed,
                          //     ),
                          //   ),
                          //   // color: Color(0xFFFFEFFC),
                          // ),
                          SizedBox(
                            width: 13,
                          ),
                          TechStackCard(
                            text: "MERN Stack",
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Row(
                        children: [
                          TechStackCard(
                            text: "MongoDB",
                          ),
                          // Container(
                          //   width: 91,
                          //   height: 30,
                          //   padding: EdgeInsets.fromLTRB(12, 6, 12, 7),
                          //   decoration: BoxDecoration(
                          //     border: Border.all(
                          //       // color: Color(0xFFFFEFFC),
                          //       color: AppColors.trial1BgRed,
                          //       // width: 1,
                          //     ),
                          //     borderRadius: BorderRadius.circular(20),
                          //   ),
                          //   child: Text(
                          //     "MongoDB",
                          //     style: TextStyle(
                          //       fontSize: 11,
                          //       fontWeight: FontWeight.w400,
                          //       fontFamily: 'Poppins',
                          //       // color: Color(0xFFAB218D),
                          //       color: AppColors.trial2DarkRed,
                          //     ),
                          //   ),
                          //   // color: Color(0xFFFFEFFC),
                          // ),
                          SizedBox(
                            width: 13,
                          ),
                          CustomButton(
                            // text: "View More",
                            text: "More",
                            onPressed: () {},
                            width: 78,
                            height: 30,
                            // color: Color(0xFFAB218D),
                            color: AppColors.trial2DarkRed,
                            radius: 13,
                            // hoverTextColor: Color(0xFF499359),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TechStackCard extends StatelessWidget {
  final String? text;
  const TechStackCard({
    Key? key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 95,
      height: 35,
      padding: EdgeInsets.fromLTRB(12, 6, 12, 7),
      decoration: BoxDecoration(
        border: Border.all(
          // color: Color(0xFFFFEFFC),
          color: AppColors.trial1BgRed,
          // width: 1,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        // "MERN Stack",
        text!,
        style: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w400,
          fontFamily: 'Poppins',
          // color: Color(0xFFAB218D),
          color: AppColors.trial2DarkRed,
        ),
      ),
      // color: Color(0xFFFFEFFC),
    );
  }
}
