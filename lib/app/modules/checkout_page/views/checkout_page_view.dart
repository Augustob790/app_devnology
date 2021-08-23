import 'package:app_devnology/app/theme/app_colors.dart';
import 'package:app_devnology/app/theme/app_images.dart';
import 'package:app_devnology/app/widgtes/image_logo_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/checkout_page_controller.dart';

class CheckoutPageView extends GetView<CheckoutPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        // ignore: prefer_const_constructors
        title: Padding(
          padding: const EdgeInsets.only(left: 40),
          child: const LogoAppBar(),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 121),
            child: Center(
              child: Image.asset(AppImages.check),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30),
            child: Text(
              "Order Placed!",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 23),
            child: Text(
              "Your order was placed successfully, For\n more details, check All My Orders page\n under Profille tab",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontStyle: FontStyle.normal,
                fontSize: 14,
                color: AppColors.primary,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 80,
              ),
              child: FloatingActionButton.extended(
                backgroundColor: AppColors.primary,
                onPressed: () {},
                icon: const Icon(Icons.chevron_right),
                label: const Text(
                  "MY ORDERS",
                  style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
