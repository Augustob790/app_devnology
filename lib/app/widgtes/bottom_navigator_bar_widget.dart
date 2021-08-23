import 'package:app_devnology/app/theme/app_colors.dart';
import 'package:flutter/material.dart';

class BottomNavigatorBarWidget extends StatefulWidget {
  const BottomNavigatorBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  _BottomNavigatorBarWidgetState createState() =>
      _BottomNavigatorBarWidgetState();
}

class _BottomNavigatorBarWidgetState extends State<BottomNavigatorBarWidget> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColors.primary,
      selectedItemColor: Colors.amber,
      unselectedItemColor: AppColors.back,
      selectedFontSize: 15,
      unselectedFontSize: 15,
      currentIndex: currentIndex,
      onTap: (value) {
        setState(() => currentIndex = value);
      },
      // ignore: prefer_const_literals_to_create_immutables
      items: [
        // ignore: prefer_const_constructors
        BottomNavigationBarItem(
          icon: const Icon(Icons.home_outlined),
          label: 'Home',
        ),
        // ignore: prefer_const_constructors
        BottomNavigationBarItem(
          icon: const Icon(Icons.search_outlined),
          label: 'Search',
        ),
        // ignore: prefer_const_constructors
        BottomNavigationBarItem(
          icon: const Icon(Icons.shopping_cart_outlined),
          label: 'Cart',
        ),
        // ignore: prefer_const_constructors
        BottomNavigationBarItem(
          icon: const Icon(Icons.person_outline),
          label: 'Profile',
        ),
        // ignore: prefer_const_constructors
        BottomNavigationBarItem(
          icon: const Icon(Icons.reorder_outlined),
          label: 'Home',
        ),
      ],
    );
  }
}
