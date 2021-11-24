import 'package:app_devnology/app/presentation/navigator/app_pages.dart';
import 'package:app_devnology/app/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomDetalhesPage extends StatelessWidget {
  const BottomDetalhesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        color: AppColors.grey,
        height: 86,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 5,
                bottom: 5,
              ),
              child: FloatingActionButton.extended(
                backgroundColor: AppColors.back,
                onPressed: () {},
                icon: const Icon(Icons.expand_less, color: Color(0xFF2E3746)),
                label: const Text(
                  "SHARE THIS",
                  style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 12,
                    color: Color(0xFF2E3746),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 5,
              ),
              child: FloatingActionButton.extended(
                backgroundColor: AppColors.primary,
                onPressed: () {
                  Get.toNamed(Routes.CART_PAGE);
                },
                icon: const Icon(Icons.chevron_right),
                label: const Text(
                  "ADD TO CART",
                  style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
