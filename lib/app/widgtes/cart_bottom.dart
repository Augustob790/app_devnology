import 'package:app_devnology/app/routes/app_pages.dart';
import 'package:app_devnology/app/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartDetalhes extends StatelessWidget {
  const CartDetalhes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        color: AppColors.grey,
        height: 86,
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Total:\n${'2.2237,79'}",
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 115,
                top: 5,
              ),
              child: FloatingActionButton.extended(
                backgroundColor: AppColors.primary,
                onPressed: () {
                  Get.toNamed(Routes.CHECKOUT_PAGE);
                },
                icon: const Icon(Icons.chevron_right),
                label: const Text(
                  "CHECKOUT",
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
