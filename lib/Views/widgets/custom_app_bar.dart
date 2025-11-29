import 'package:flutter/material.dart';
import 'package:note_app/Views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Notes",
          style: TextStyle(
            fontSize: 28,
            color: Colors.white,
            decoration: TextDecoration.none,
          ),
        ),
        Spacer(),
        const CustomSearchIcon(),
      ],
    );
  }
}