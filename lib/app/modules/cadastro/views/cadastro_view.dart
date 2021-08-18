import 'package:app_devnology/app/modules/cadastro/controllers/cadastro_controller.dart';
import 'package:app_devnology/app/theme/app_colors.dart';
import 'package:app_devnology/app/theme/app_images.dart';
import 'package:app_devnology/app/widgtes/appbar_widgets.dart';
import 'package:app_devnology/app/widgtes/cadastro_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CadastroPage extends GetView<CadastroController> {
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 58, left: 15, right: 15),
                      child: TextField(
                        //controller: _controllerEmail,
                        autofocus: true,
                        keyboardType: TextInputType.name,
                        style: TextStyle(fontSize: 15),
                        decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.only(top: 32, left: 16, right: 16),
                            hintText: "Nome",
                            filled: true,
                            fillColor: AppColors.textcolor,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 15, right: 15),
                      child: TextField(
                        //controller: _controllerEmail,
                        autofocus: true,
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(fontSize: 15),
                        decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.only(top: 32, left: 16, right: 16),
                            hintText: "E-mail",
                            filled: true,
                            fillColor: AppColors.textcolor,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 15, right: 15),
                      child: TextField(
                        //controller: _controllerSenha,
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        style: TextStyle(fontSize: 15),
                        decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.only(top: 32, left: 16, right: 16),
                            hintText: "Senha",
                            filled: true,
                            fillColor: AppColors.textcolor,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 30,
              child: Padding(
                padding: EdgeInsets.only(top: 130, left: 48, right: 48.63),
                child: CadastroButtonWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
