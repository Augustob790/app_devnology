import 'package:app_devnology/app/theme/app_colors.dart';
import 'package:flutter/material.dart';

class BottomNavigatorBarWidget extends StatelessWidget {
  const BottomNavigatorBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.primary,
        selectedItemColor: Colors.amber,
        unselectedItemColor: AppColors.background,
        selectedFontSize: 15,
        unselectedFontSize: 15,
        onTap: (value) {},
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            title: Text("Search"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            title: Text("Cart"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            title: Text("Profile"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.reorder_outlined),
            title: Text("Home"),
          ),
        ],
      ),
    );
  }
}
