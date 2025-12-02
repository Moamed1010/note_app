import 'package:flutter/material.dart';
import 'package:note_app/Views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon, this.onTap});
  final String title;
  final IconData icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 28,
            color: Colors.white,
            decoration: TextDecoration.none,
          ),
        ),
        Spacer(),
         CustomSearchIcon(icon: icon,onTap: onTap,),
      ],
    );
  }
}