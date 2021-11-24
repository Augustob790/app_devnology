import 'package:app_devnology/app/theme/app_colors.dart';
import 'package:app_devnology/app/theme/app_images.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Center(
              child: Image.asset(AppImages.logo2),
            ),
          ),
          const CircularProgressIndicator(),
        ],
      ),
    );
  }
}
