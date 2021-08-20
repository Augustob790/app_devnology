import 'package:app_devnology/app/theme/app_images.dart';
import 'package:flutter/material.dart';

class LogoAppBar extends StatelessWidget {
  const LogoAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          AppImages.logo2,
          fit: BoxFit.contain,
          height: 25,
        ),
      ],
    );
  }
}
