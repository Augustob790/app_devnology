import 'package:app_devnology/app/theme/app_colors.dart';
import 'package:app_devnology/app/theme/app_images.dart';
import 'package:app_devnology/app/widgtes/bottom_navigator_bar_widget.dart';
import 'package:flutter/material.dart';

class HomeComponents extends StatelessWidget {
  const HomeComponents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 25, left: 25, bottom: 23),
          child: Row(
            children: [
              Text(
                "Categories",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              AppImages.cat3,
            ),
            Image.asset(
              AppImages.cat2,
            ),
            Image.asset(
              AppImages.cat1,
            ),
            Image.asset(
              AppImages.cat4,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Apprael"),
              Text("Beauty"),
              Text("Shoes"),
              Text("See All"),
            ],
          ),
        ),
        SizedBox(height: 22),
        Padding(
          padding: const EdgeInsets.only(left: 25, bottom: 10),
          child: Row(
            children: [
              Text(
                "Latest",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppImages.banner),
          ],
        ),
        const Expanded(child: BottomNavigatorBarWidget()),
      ],
    );
  }
}
