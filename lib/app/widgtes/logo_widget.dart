import 'package:app_devnology/app/theme/app_images.dart';
import 'package:flutter/material.dart';

class logoWidget extends StatelessWidget {
  const logoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: 145, left: 48, right: 48.63),
        child: Image.asset(AppImages.logo2),
      ),
    );
  }
}