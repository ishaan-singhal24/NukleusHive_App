import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nukleushive_app/data/constants/app_assets.dart';
import 'package:nukleushive_app/main.dart';

class SettingsNavIcon extends ConsumerWidget {
  const SettingsNavIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        ref.read(navigationProvider.notifier).state = 'settingsScreen';
      },
      child: Image.asset(
        AppAssets.settingsNavIconImage,
      ),
    );
  }
}
