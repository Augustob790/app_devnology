import 'package:get/get.dart';

import 'package:app_devnology/app/modules/cadastro/bindings/cadastro_binding.dart';
import 'package:app_devnology/app/modules/cadastro/views/cadastro_view.dart';
import 'package:app_devnology/app/modules/cart_page/bindings/cart_page_binding.dart';
import 'package:app_devnology/app/modules/cart_page/views/cart_page_view.dart';
import 'package:app_devnology/app/modules/checkout_page/bindings/checkout_page_binding.dart';
import 'package:app_devnology/app/modules/checkout_page/views/checkout_page_view.dart';
import 'package:app_devnology/app/modules/detalhes_page/bindings/detalhes_page_binding.dart';
import 'package:app_devnology/app/modules/detalhes_page/views/detalhes_page_view.dart';
import 'package:app_devnology/app/modules/home/bindings/home_binding.dart';
import 'package:app_devnology/app/modules/home/views/home_view.dart';
import 'package:app_devnology/app/modules/login/bindings/login_binding.dart';
import 'package:app_devnology/app/modules/login/views/login_view.dart';
import 'package:app_devnology/app/modules/splash_screen/bindings/splash_screen_binding.dart';
import 'package:app_devnology/app/modules/splash_screen/views/splash_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.CADASTRO,
      page: () => CadastroPage(),
      binding: CadastroBinding(),
    ),
    GetPage(
      name: _Paths.DETALHES_PAGE,
      page: () => DetalhesPageView(),
      binding: DetalhesPageBinding(),
    ),
    GetPage(
      name: _Paths.CART_PAGE,
      page: () => CartPageView(),
      binding: CartPageBinding(),
    ),
    GetPage(
      name: _Paths.CHECKOUT_PAGE,
      page: () => CheckoutPageView(),
      binding: CheckoutPageBinding(),
    ),
  ];
}
