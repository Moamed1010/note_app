import 'package:flutter/material.dart';

class NoteViweBody extends StatelessWidget {
  const NoteViweBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(children: [const SizedBox(height: 10), CustomAppBar()]),
    );
  }
}

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

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.07),
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Center(child: Icon(Icons.search, size: 28)),
    );
  }
}
