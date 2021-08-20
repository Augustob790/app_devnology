import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.chat_bubble_outline_outlined),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.notifications_none),
        ),
      ],
    );
  }
}
