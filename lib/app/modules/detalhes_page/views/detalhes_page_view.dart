import 'package:app_devnology/app/theme/app_colors.dart';
import 'package:app_devnology/app/widgtes/bottom_detalhes_page.dart';
import 'package:app_devnology/app/widgtes/image_logo_appbar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detalhes_page_controller.dart';

class DetalhesPageView extends GetView<DetalhesPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined),
          ),
        ],
        // ignore: prefer_const_constructors
        title: Padding(
          padding: const EdgeInsets.only(left: 40),
          child: const LogoAppBar(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 20, right: 25),
              // ignore: sort_child_properties_last
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: prefer_const_constructors
                  Text(
                    " Lenovo 15.6` ThinkPad P15s Gen 1 Laptop,Intel\n Core i7-10510U Quad-Core, 16GB DRR4 RAM,\n 512GB SSD, NVIDIA Quadro P520, Windows 10\n Pro (20T4001VUS)",
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                        fontSize: 13.8,
                        fontWeight: FontWeight.w700,
                        color: AppColors.primary),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 300,
              child: Image.network(
                'https://i.zst.com.br/thumbs/12/32/1a/857945648.jpg',
                height: 300,
                width: 300,
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 20, bottom: 5),
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        "Price:\n 1,519.99 ",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 20),
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        "About this item",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 22, top: 10),
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        "is simply dummy text of the printing and typesetting industry.\n Lorem Ipsum has been the industry's standard dummy text\n ever since the 1500s,Lorem Ipsum.\n  when an unknown printer took a galley of type and scrambled\nit to make a type specimen book. It has survived\n not only five centuries",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          color: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomSheet: const BottomDetalhesPage(),
    );
  }
}
