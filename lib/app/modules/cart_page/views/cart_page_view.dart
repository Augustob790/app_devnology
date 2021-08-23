import 'package:app_devnology/app/theme/app_colors.dart';
import 'package:app_devnology/app/widgtes/appbar_widget.dart';
import 'package:app_devnology/app/widgtes/bottom_navigator_bar_widget.dart';
import 'package:app_devnology/app/widgtes/cart_bottom.dart';
import 'package:app_devnology/app/widgtes/image_logo_appbar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/cart_page_controller.dart';

class CartPageView extends GetView<CartPageController> {
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 25, bottom: 23),
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // ignore: prefer_const_constructors
                Text(
                  "Cart",
                  style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary),
                )
              ],
            ),
          ),
        ],
      ),
      bottomSheet: const CartDetalhes(),
      bottomNavigationBar: const BottomNavigatorBarWidget(),
    );
  }
}
