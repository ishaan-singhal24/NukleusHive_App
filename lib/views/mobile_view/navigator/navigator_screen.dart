import 'package:flutter/material.dart';
import 'package:nukleushive_app/data/config/navigation_service.dart';
import 'package:nukleushive_app/data/constants/app_assets.dart';
import 'package:nukleushive_app/data/constants/app_colors.dart';
import 'package:nukleushive_app/main.dart';

import 'package:nukleushive_app/views/mobile_view/common/custom_button.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';

// import riverpod
import 'package:flutter_riverpod/flutter_riverpod.dart';

// final navigationProvider = StateProvider((_) => 'navigatorScreen');

// final NavigationService? navigationService = NavigationService();

class NavigatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFF499359),
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        toolbarHeight: 0,
      ),
      body: SafeArea(
        child: Container(
          height: screenHeight,
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Container(
                      width: screenWidth,
                      child: Image.asset(
                        AppAssets.navigatorScreenImage,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 356,
                      child: Column(
                        children: [
                          Text(
                            "Disrupting the",
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w700,
                              // color: Color(0xFFFFFFFF),
                              color: AppColors.onPrimary,
                            ),
                          ),
                          Text(
                            "world as",
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w700,
                              // color: Color(0xFFFFFFFF),
                              color: AppColors.onPrimary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    // CustomButton(
                    //   text: "Founder",
                    //   onPressed: () {},
                    //   width: 332,
                    //   height: 64,
                    //   fontSize: 16,
                    //   fontWeight: FontWeight.w700,
                    //   textColor: Color(0xFF002204),
                    //   // trailingIcon: Icons.keyboard_arrow_right,
                    // ),
                    InkWellButton(
                      text: "Founder",
                    ),
                    Container(
                      height: 26,
                    ),
                    // CustomButton(
                    //   width: 332,
                    //   height: 64,
                    //   text: "Co-Founder",
                    //   fontSize: 16,
                    //   fontWeight: FontWeight.w700,
                    //   textColor: Color(0xFF002204),
                    //   onPressed: () {},
                    //   trailingIcon: Icons.keyboard_arrow_right,
                    // ),
                    // InkWell(
                    //   onTap: () {},
                    //   child: Padding(
                    //     padding: const EdgeInsets.only(
                    //       left: 29,
                    //       right: 29,
                    //     ),
                    //     child: Container(
                    //       // width: 332,
                    //       height: 64,
                    //       decoration: BoxDecoration(
                    //         color: Color(0xFFFFFFFF),
                    //         borderRadius: BorderRadius.circular(11),
                    //       ),
                    //       child: Padding(
                    //         padding: const EdgeInsets.only(
                    //           left: 28,
                    //           // top: 23,
                    //           right: 22,
                    //           // 24,
                    //         ),
                    //         child: Row(
                    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //           // crossAxisAlignment: CrossAxisAlignment.start,
                    //           children: [
                    //             Text(
                    //               "Co-Founder",
                    //               style: TextStyle(
                    //                 fontSize: 16,
                    //                 fontWeight: FontWeight.w700,
                    //                 // fontFamily: "Poppins-Regular",
                    //                 fontFamily: "Poppins",
                    //                 color: Color(0xFF002204),
                    //               ),
                    //             ),
                    //             Iconify(
                    //               MaterialSymbols.arrow_forward_ios,
                    //             ),
                    //           ],
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),

                    // Inkwell Co-Founder button

                    InkWellButton(
                      text: "Co-Founder",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InkWellButton extends ConsumerWidget {
  final String? text;
  const InkWellButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final NavigationService navigationService = NavigationService();
    return InkWell(
      onTap: () {
        ref.read(navigationProvider.notifier).state = 'tutorialScreen1';
        // navigationService.navigateTo('tutorialScreen1');
        // Navigator.of(context).pushNamed('tutorialScreen1');
      },
      child: Padding(
        padding: const EdgeInsets.only(
          left: 29,
          right: 29,
        ),
        child: Container(
          // width: 332,
          height: 64,
          decoration: BoxDecoration(
            // color: Color(0xFFFFFFFF),
            color: AppColors.onPrimary,
            borderRadius: BorderRadius.circular(11),
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
                    fontWeight: FontWeight.w700,
                    // fontFamily: "Poppins-Regular",
                    fontFamily: "Poppins",
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
