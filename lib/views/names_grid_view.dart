import 'package:flutter/material.dart';
import 'package:flutter_asmaa_allah_alhosna/models.dart';
import 'package:flutter_asmaa_allah_alhosna/views/name_card.dart';

// ignore: must_be_immutable
class NamesGridView extends StatelessWidget {
  List<AsmaaAllah> names;
  NamesGridView({super.key , required this.names});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2) ,
       itemCount: names.length,
       itemBuilder: (context , index){
        return NameCard(name: names[index]);
       }
      ),
    );
  }
}