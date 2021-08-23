import 'package:get/get.dart';

class CartPageController extends GetxController {
  //TODO: Implement CartPageController

  final count = 0.obs;

  @override
  void onClose() {}
  void increment() => count.value++;
}
