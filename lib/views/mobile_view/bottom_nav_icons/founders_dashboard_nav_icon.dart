import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nukleushive_app/data/constants/app_assets.dart';
import 'package:nukleushive_app/main.dart';

class FoundersDashboardNavIcon extends ConsumerWidget {
  const FoundersDashboardNavIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        ref.read(navigationProvider.notifier).state = 'foundersDashboardScreen';
      },
      child: Image.asset(
        AppAssets.dashboardNavIconImage,
      ),
    );
  }
}
