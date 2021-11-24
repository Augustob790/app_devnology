import 'package:app_devnology/app/theme/app_colors.dart';
import 'package:app_devnology/app/theme/app_images.dart';
import 'package:app_devnology/app/widgtes/appbar_widget.dart';
import 'package:app_devnology/app/widgtes/bottom_navigator_bar_widget.dart';
import 'package:app_devnology/app/widgtes/image_logo_appbar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: const LogoAppBar(),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          const AppBarWidget(),
        ],
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        color: AppColors.backhome,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 25, bottom: 23),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: prefer_const_constructors
                  Text(
                    "Categories",
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary,
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    // ignore: avoid_print
                    print("clicado");
                  },
                  child: Image.asset(
                    AppImages.cat3,
                    fit: BoxFit.cover,
                  ),
                ),
                Image.asset(
                  AppImages.cat2,
                ),
                Image.asset(
                  AppImages.cat1,
                ),
                Image.asset(
                  AppImages.cat4,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text("Apprael"),
                  const Text("Beauty"),
                  const Text("Shoes"),
                  const Text("See All"),
                ],
              ),
            ),
            const SizedBox(height: 22),
            Padding(
              padding: const EdgeInsets.only(left: 25, bottom: 10),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: prefer_const_constructors
                  Text(
                    "Latest",
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary,
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppImages.banner),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Expanded(child: BottomNavigatorBarWidget()),
          ],
        ),
      ),
    );
  }
}
