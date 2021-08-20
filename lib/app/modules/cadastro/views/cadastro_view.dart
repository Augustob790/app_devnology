import 'package:app_devnology/app/modules/cadastro/controllers/cadastro_controller.dart';
import 'package:app_devnology/app/modules/login/controllers/login_controller.dart';
import 'package:app_devnology/app/theme/app_colors.dart';
import 'package:app_devnology/app/widgtes/image_logo_appbar.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class CadastroPage extends GetView<CadastroController> {
  final LoginController _loginController = Get.find<LoginController>();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void validate() {
    if (formKey.currentState!.validate()) {
      // ignore: avoid_print
      print("Validated");
    } else {
      // ignore: avoid_print
      print("Not Validated");
    }
  }

  String? validateName(value) {
    if (value != null) {
      return "Digite um Nome";
    } else {
      return null;
    }
  }

  Future<String?> validatePass(value) async {
    if (value != null) {
      return "Digite uma Senha";
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        // ignore: prefer_const_constructors
        title: Padding(
          padding: const EdgeInsets.only(left: 40),
          child: const LogoAppBar(),
        ),
      ),
      body: Container(
        child: Stack(
          children: [
            const Positioned(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  'Crie uma conta de acesso usando o seu e-mail como usuário',
                  style: TextStyle(
                    fontSize: 18,
                    textBaseline: TextBaseline.ideographic,
                  ),
                ),
              ),
            ),
            Positioned(
              child: Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 55, left: 15, right: 15),
                        child: TextFormField(
                          controller: _loginController.nameTextController,
                          keyboardType: TextInputType.name,
                          validator: validateName,
                          style: const TextStyle(fontSize: 15),
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(
                                top: 32, right: 16, left: 16),
                            hintText: "Nome",
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 17, left: 15, right: 15),
                        child: TextFormField(
                          controller: _loginController.emailTextController,
                          validator: EmailValidator(
                              errorText: "Digite um E-mail valido"),
                          keyboardType: TextInputType.emailAddress,
                          style: const TextStyle(fontSize: 15),
                          decoration: InputDecoration(
                            contentPadding:
                                // ignore: prefer_const_constructors
                                EdgeInsets.only(top: 32, right: 16, left: 16),
                            hintText: "Email",
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 17, left: 15, right: 15),
                        child: TextFormField(
                          controller: _loginController.passwordTextController,
                          obscureText: true,
                          validator: MinLengthValidator(8,
                              errorText: "Digite uma senha de 8 digitos"),
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
              top: 30,
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 130, left: 48, right: 48.63),
                child: Padding(
                  padding: const EdgeInsets.only(top: 215),
                  child: MaterialButton(
                    minWidth: 120,
                    height: 48,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: AppColors.buttom,
                    onPressed: validate,
                    splashColor: Colors.blueGrey,
                    child: Text('Cadastrar',
                        style: TextStyle(color: AppColors.grey, fontSize: 16)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
