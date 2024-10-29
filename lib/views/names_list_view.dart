import 'package:flutter/material.dart';
import 'package:flutter_asmaa_allah_alhosna/models.dart';
import 'package:flutter_asmaa_allah_alhosna/views/name_card.dart';

// ignore: must_be_immutable
class NamesListView extends StatelessWidget {
  List<AsmaaAllah> names;
  NamesListView({super.key , required this.names});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: names.length,
      itemBuilder: (context , index){
        return NameCard(name: names[index]);
      }

    );
  }
}