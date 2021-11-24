import 'package:app_devnology/app/presentation/navigator/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonWidgetText extends StatelessWidget {
  const ButtonWidgetText({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        textStyle: const TextStyle(
          fontSize: 15,
        ),
      ),
      onPressed: () {
        Get.toNamed(Routes.CADASTRO);
      },
      child: const Text(
        'Ainda não possui uma conta?\n Cadastre-se já!',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
