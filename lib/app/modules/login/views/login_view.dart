import 'package:app_devnology/app/modules/login/controllers/login_controller.dart';
import 'package:app_devnology/app/theme/app_colors.dart';
import 'package:app_devnology/app/widgtes/button_widget_text.dart';
import 'package:app_devnology/app/widgtes/entrar_button_widget_.dart';
import 'package:app_devnology/app/widgtes/logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class LoginPage extends GetView<LoginController> {
  final LoginController _loginController = Get.find<LoginController>();
  final GlobalKey _formKey = GlobalKey<FormState>();
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
            const Positioned(
              left: 0,
              right: 0,
              top: 120,
              child: Padding(
                padding: EdgeInsets.only(top: 130, left: 48, right: 48.63),
                child: EntrarButtonWidget(),
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
