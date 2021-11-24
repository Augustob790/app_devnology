import 'package:app_devnology/app/presentation/navigator/app_pages.dart';

import 'package:app_devnology/app/theme/app_colors.dart';
import 'package:app_devnology/app/ui/login/controllers/login_controller.dart';
import 'package:app_devnology/app/widgtes/button_widget_text.dart';
import 'package:app_devnology/app/widgtes/entrar_button_widget_.dart';
import 'package:app_devnology/app/widgtes/logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

// ignore: must_be_immutable
class LoginPage extends GetView<LoginController> {
  final LoginController _loginController = Get.find<LoginController>();
  final GlobalKey _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.primary,
      // ignore: sized_box_for_whitespace
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            const Positioned(
              child: logoWidget(),
            ),
            Positioned(
              child: Padding(
                padding: const EdgeInsets.only(top: 196.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 80, left: 15, right: 15),
                        child: TextFormField(
                          onChanged: (text) {
                            email = text;
                          },
                          controller: _loginController.emailTextController,
                          keyboardType: TextInputType.emailAddress,
                          style: const TextStyle(fontSize: 15),
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(
                                top: 32, right: 16, left: 16),
                            hintText: "E-mail",
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20.0, left: 15, right: 15),
                        child: TextFormField(
                          onChanged: (text) {
                            password = text;
                          },
                          controller: _loginController.passwordTextController,
                          obscureText: true,
                          style: const TextStyle(fontSize: 15),
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(
                                  top: 32, left: 16, right: 16),
                              hintText: "Senha",
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15))),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 120,
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 130, left: 48, right: 48.63),
                child: MaterialButton(
                  minWidth: 120,
                  height: 48,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: AppColors.buttom,
                  onPressed: () async {
                    // var url =
                    //     Uri.parse('http://192.168.1.101:8080/api/v1/login');
                    // print(url);
                    // var response = await http.post(url,
                    //     body: {"username": email, "password": password});
                    // final json = jsonDecode(response.body);
                    // //print(json['token']);
                    // if (response.statusCode == 200 && json.containsKey("token")) {
                    //   Get.offAndToNamed(Routes.HOME);
                    // }
                    Get.offAndToNamed(Routes.HOME);
                  },
                  splashColor: Colors.blueGrey,
                  child: const Text('Cadastrar',
                      style: TextStyle(color: AppColors.grey, fontSize: 16)),
                ),
              ),
            ),
            const Positioned(
              left: 0,
              right: 0,
              top: 450,
              bottom: 10,
              child: Padding(
                padding: EdgeInsets.only(top: 130, left: 48, right: 48.63),
                child: ButtonWidgetText(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
