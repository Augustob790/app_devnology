import 'package:app_devnology/app/routes/app_pages.dart';
import 'package:app_devnology/app/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EntrarButtonWidget extends StatelessWidget {
  const EntrarButtonWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 200),
        child: MaterialButton(
          minWidth: 120,
          height: 48,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: AppColors.buttom,
          onPressed: () => {
            Get.offAndToNamed(Routes.HOME),
          },
          splashColor: Colors.blueGrey,
          child: Text(
            'Entrar',
            style: TextStyle(
              color: AppColors.grey,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
