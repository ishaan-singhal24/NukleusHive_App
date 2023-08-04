// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nukleushive_app/data/constants/app_assets.dart';
import 'package:nukleushive_app/data/constants/app_colors.dart';
import 'package:nukleushive_app/views/mobile_view/common/custom_button.dart';

class ScheduledInterviewsRescheduleInterviewScreen extends StatefulWidget {
  @override
  State<ScheduledInterviewsRescheduleInterviewScreen> createState() =>
      _ScheduledInterviewsRescheduleInterviewScreenState();
}

class _ScheduledInterviewsRescheduleInterviewScreenState
    extends State<ScheduledInterviewsRescheduleInterviewScreen> {
  @override
  Widget build(BuildContext context) {
    // Media Query

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor:
          // Color(0xFFDEE5D8),
          AppColors.surfaceVariant,
      // Scheduled Interviews App Bar
      appBar: AppBar(
        backgroundColor:
            // Color(0xFFFFFFFF),
            AppColors.onPrimary,
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Scheduled Interviews',
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
      ),

      //extendBodyBehindAppBar: true,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 18,
            top: 15,
            right: 17,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Reschedule interview",
                style: TextStyle(
                  fontSize: 20,
                  // color: Color(0xFF101F10),
                  color: AppColors.onSecondaryContainer,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                children: [
                  Text(
                    "with ",
                    style: TextStyle(
                      fontSize: 14,
                      // color: Color(0xFF101F10),
                      color: AppColors.onSecondaryContainer,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "Suneet Nayier",
                    style: TextStyle(
                      fontSize: 14,
                      // color: Color(0xFF499359),
                      color: AppColors.primary,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    AppAssets.rescheduleInterviewImage1,
                    fit: BoxFit.cover,
                    // height: 131,
                    // width: 390,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "You can choose from the listed of previously available slots of",
                        style: TextStyle(
                          fontSize: 11,
                          // color: Color(0xFF72796F),
                          color: AppColors.outline,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "the co-founder.",
                        style: TextStyle(
                          fontSize: 11,
                          // color: Color(0xFF72796F),
                          color: AppColors.outline,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                "Choose the date",
                style: TextStyle(
                  fontSize: 12,
                  // color: Color(0xFF002204),
                  color: AppColors.onPrimaryContainer,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 9,
              ),
              Container(
                // color: Color(0xFFFFFFFF),
                height: 42,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  // color: Color(0xFFFFFFFF),
                  color: AppColors.onPrimary,
                  border: Border.all(
                    // color: Color(0xFF72796F),
                    color: AppColors.outline,
                  ),
                ),
                // width: 355,
                // width: 255,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(
                    18,
                    11,
                    15,
                    11,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "25/04/2023",
                        style: TextStyle(
                          fontSize: 12,
                          // color: Color(0xFF499359),
                          color: AppColors.primary,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 235,
                        // width: 134,
                      ),
                      Image.asset(
                        AppAssets.rescheduleInterviewImage2,
                        fit: BoxFit.cover,
                        // height: 131,
                        // width: 390,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 17,
              ),
              Text(
                "Choose the slots",
                style: TextStyle(
                  fontSize: 12,
                  // color: Color(0xFF002204),
                  color: AppColors.onPrimaryContainer,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 9,
              ),
              Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Custom Button for 11-12
                      CustomTimeSlotButton(
                        text: "11:00-12:00",
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      CustomButton(
                        text: "12:00-13:00",
                        onPressed: () {},
                        // color: Color(0xFF499359),
                        color: AppColors.primary,
                        radius: 38,
                        width: 106,
                        height: 42,
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      // CustomButton(
                      //   text: "11:00-12:00",
                      //   onPressed: () {},
                      //   radius: 38,
                      //   color: Color(0xFFFFFFFF),
                      //   textColor: Color(0xFF72796F),
                      //   width: 106,
                      //   height: 42,
                      // ),
                      CustomTimeSlotButton(
                        text: "11:00-12:00",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  // CustomButton(
                  //   text: "11:00-12:00",
                  //   onPressed: () {},
                  //   radius: 38,
                  //   color: Color(0xFFFFFFFF),
                  //   textColor: Color(0xFF72796F),
                  //   width: 106,
                  //   height: 42,
                  // ),
                  CustomTimeSlotButton(
                    text: "11:00-12:00",
                  ),
                ],
              ),
              SizedBox(
                height: 240,
              ),
              CustomButton(
                text: "Confirm Booking",
                onPressed: () {},
                radius: 29,
                // color: Color(0xFF499359),
                color: AppColors.primary,
                width: 299,
                height: 42,
              ),
              SizedBox(
                height: 21,
              ),
            ],
          ),
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
              AppAssets.interviewSelectedNavIconImage,
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
              AppAssets.settingsNavIconImage,
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

class CustomTimeSlotButton extends StatelessWidget {
  final String? text;
  const CustomTimeSlotButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: text!,
      radius: 38,
      onPressed: () {},
      // color: Color(0xFFFFFFFF),
      color: AppColors.onPrimary,
      // textColor: Color(0xFF72796F),
      textColor: AppColors.outline,
      width: 106,
      height: 42,
    );
  }
}
