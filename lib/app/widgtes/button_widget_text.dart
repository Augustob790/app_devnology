import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonWidgetText extends StatelessWidget {
  const ButtonWidgetText({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        style: TextButton.styleFrom(
          textStyle: const TextStyle(
            fontSize: 15,
          ),
        ),
        onPressed: () {
          Get.toNamed("/cadastro");
        },
        child: const Text(
          'Ainda não possui uma conta?\n Cadastre-se já!',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
