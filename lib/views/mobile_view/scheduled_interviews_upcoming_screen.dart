import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nukleushive_app/data/constants/app_assets.dart';
import 'package:nukleushive_app/data/constants/app_colors.dart';
import 'package:nukleushive_app/views/mobile_view/common/custom_button.dart';
import 'package:nukleushive_app/main.dart';

class ScheduledInterviewsUpcomingScreen extends StatefulWidget {
  @override
  State<ScheduledInterviewsUpcomingScreen> createState() =>
      _ScheduledInterviewsUpcomingScreenState();
}

class _ScheduledInterviewsUpcomingScreenState
    extends State<ScheduledInterviewsUpcomingScreen> {
  @override
  Widget build(BuildContext context) {
    // Media Query

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor:
          // Color(0xFFFCFDF6),
          AppColors.surface,

      // Scheduled Interviews App Bar
      appBar: AppBar(
        backgroundColor:
            // Color(0xFFFFFFFF),
            AppColors.onPrimary,
        title: Align(
          alignment: Alignment.centerLeft,
          // alignment: Alignment.topLeft,
          child: Text(
            'Scheduled Interviews',
            style: TextStyle(
              // color: Color(0xFF002204),
              color: AppColors.onPrimaryContainer,
              fontFamily: "Poppins",
              // fontSize: 20,
              fontSize: 19,
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
      body:
          //  SafeArea(
          // child:
          SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: 16,
            right: 17,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 29,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 18,
                ),
                child: Row(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Text(
                          "Upcoming",
                          style: TextStyle(
                            fontSize: 14,
                            // color: Color(0xFF499359),
                            color: AppColors.primary,
                            fontFamily: 'Poppins-Regular',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            // color: Color(0xFF499359),
                            color: AppColors.primary,
                            width: 4,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 49,
                    ),
                    CompletedTab(),
                  ],
                ),
              ),
              SizedBox(
                height: 22,
                // height: 7,
              ),

              ScheduledInterviewUpcomingCard(),

              SizedBox(
                height: 13,
              ),

              // 2nd

              ScheduledInterviewUpcomingCard(),

              SizedBox(
                height: 13,
              ),

              // 3rd

              ScheduledInterviewUpcomingCard(),

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

class CompletedTab extends ConsumerWidget {
  const CompletedTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        ref.read(navigationProvider.notifier).state =
            'scheduledInterviewsCompletedScreen';
      },
      child: Text(
        "Completed",
        style: TextStyle(
          fontSize: 14,
          // color: Color(0xFFDEE5D8),
          color: AppColors.surfaceVariant,
          fontFamily: 'Poppins-Regular',
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

// ScheduledInterviewUpcomingCard() {
//   return ScheduledInterviewUpcomingCard();
// }

class ScheduledInterviewUpcomingCard extends StatelessWidget {
  const ScheduledInterviewUpcomingCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            // color: Colors.amber,
            // color: Color(0xFF72796F),
            color: AppColors.outline,
            blurRadius: 0.1,
          ),
        ],
        // color: Color(0xFFFFFFFF),
        color: AppColors.onPrimary,
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      child: Padding(
        // padding: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.only(
          left: 14,
          top: 15,
          right: 13,
          bottom: 9,
        ),
        child: Column(
          children: [
            Row(
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
                      "22nd April 2023  |   4pm - 6pm",
                      style: TextStyle(
                        fontSize: 12,
                        // color: Color(0xFF72796F),
                        color: AppColors.outline,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 17,
            ),
            ViewProfileCustomButton(),
          ],
        ),
      ),
    );
  }
}

class ViewProfileCustomButton extends ConsumerWidget {
  const ViewProfileCustomButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomButton(
      text: "View Profile",
      onPressed: () {
        // ref.read(navigationProvider.notifier).state =
        //     'othersCoFoundersProfileScreen';
        ref.read(navigationProvider.notifier).state =
            'othersCoFoundersProfileScreen';
      },
      // color: Color(0xFF499359),
      color: AppColors.primary,
      width: 329,
      height: 28,
      radius: 19,
    );
  }
}
