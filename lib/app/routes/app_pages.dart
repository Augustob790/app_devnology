import 'package:app_devnology/app/modules/cadastro/bindings/cadastro_binding.dart';
import 'package:app_devnology/app/modules/cadastro/views/cadastro_view.dart';
import 'package:app_devnology/app/modules/home/bindings/home_binding.dart';
import 'package:app_devnology/app/modules/home/views/home_view.dart';
import 'package:app_devnology/app/modules/login/bindings/login_binding.dart';
import 'package:app_devnology/app/modules/login/views/login_view.dart';
import 'package:app_devnology/app/modules/splash_screen/bindings/splash_screen_binding.dart';
import 'package:app_devnology/app/modules/splash_screen/views/splash_screen_view.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

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
  ];
}
