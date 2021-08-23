import 'package:get/get.dart';

import '../controllers/detalhes_page_controller.dart';

class DetalhesPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetalhesPageController>(
      () => DetalhesPageController(),
    );
  }
}
