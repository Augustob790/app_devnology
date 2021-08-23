import 'dart:async';

import 'package:app_devnology/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    loading();
  }

  Future<void> loading() async {
    Timer(const Duration(seconds: 5), () {
      Get.offAndToNamed(Routes.LOGIN);
    });
  }
}

//metodo de verificação de usuario autenticado
// baixando as configurações do app
//verificando um storage