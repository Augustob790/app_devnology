import 'package:app_devnology/app/modules/cadastro/controllers/cadastro_controller.dart';
import 'package:app_devnology/app/modules/login/controllers/login_controller.dart';
import 'package:app_devnology/app/theme/app_colors.dart';
import 'package:app_devnology/app/widgtes/appbar_widgets.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class CadastroPage extends GetView<CadastroController> {
  final LoginController _loginController = Get.find<LoginController>();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void validate() {
    if (formKey.currentState!.validate()) {
      print("Validated");
    } else {
      print("Not Validated");
    }
  }

  String? validateName(value) {
    if (value.isEmpty) {
      return "Digite um Nome";
    } else {
      return null;
    }
  }

  String? validatePass(value) {
    if (value.isEmpty) {
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
        title: AppBarWidgets(),
      ),
      body: Container(
        child: Stack(
          children: [
            Positioned(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
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
                          autofocus: false,
                          validator: validateName,
                          style: TextStyle(fontSize: 15),
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.only(top: 32, right: 16, left: 16),
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
                          autofocus: false,
                          style: TextStyle(fontSize: 15),
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.only(top: 32, right: 16, left: 16),
                            hintText: "E-mail",
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
                          autofocus: false,
                          obscureText: true,
                          validator: MinLengthValidator(8,
                              errorText: "Digite uma senha de 8 digitos"),
                          style: TextStyle(fontSize: 15),
                          decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.only(top: 32, left: 16, right: 16),
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
                padding: EdgeInsets.only(top: 130, left: 48, right: 48.63),
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
