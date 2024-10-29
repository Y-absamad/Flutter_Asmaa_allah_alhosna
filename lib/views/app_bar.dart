import 'package:flutter/material.dart';

class BuildAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool isListView;
  final Function() onToggleView;
  const BuildAppBar(
      {super.key, required this.isListView, required this.onToggleView});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'أسماء الله الحسنى',
        style: TextStyle(
          fontFamily: 'appBarFont',
          color: Color.fromARGB(255, 255, 179, 3),
          fontSize: 40,
          wordSpacing: 5,
        ),
      ),
      centerTitle: true,
      backgroundColor: const Color.fromARGB(255, 16, 77, 130),
      
      actions: [
        IconButton(
          icon: Icon(
            isListView ? Icons.grid_view : Icons.list,
            size: 35,
            color: const Color.fromARGB(202, 242, 171, 5),
          ),
          onPressed: () {
            onToggleView();
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
