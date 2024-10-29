import 'package:flutter/material.dart';
import 'package:flutter_asmaa_allah_alhosna/models.dart';

class NameCard extends StatelessWidget {
  final AsmaaAllah name;

  NameCard({required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 100,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color.fromARGB(41, 78, 72, 6),
        //color: const Color.fromARGB(182, 36, 192, 227),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: const Color.fromARGB(234, 255, 179, 3),
          width: 1.5,
        ),
      ),
      child: Text(
        name.name,
        style: const TextStyle(
          fontSize: 33,
          color: Colors.white,
          fontFamily: 'myFont',
        ),
      ),
    );
  }
}
