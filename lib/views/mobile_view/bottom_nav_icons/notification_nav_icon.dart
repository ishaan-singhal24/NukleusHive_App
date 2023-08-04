import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nukleushive_app/data/constants/app_assets.dart';
import 'package:nukleushive_app/main.dart';

class NotificationNavIcon extends ConsumerWidget {
  const NotificationNavIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        ref.read(navigationProvider.notifier).state =
            'notificationsInterviewScreen';
      },
      child: Image.asset(
        AppAssets.notificationsNavIconImage,
      ),
    );
  }
}
