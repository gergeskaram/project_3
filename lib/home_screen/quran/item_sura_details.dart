import 'package:flutter/material.dart';
import 'package:islam_rrrrrr/home_screen/quran/sura_details_screen.dart';

class ItemSuraDetails extends StatelessWidget {
  String name;
  int index;

  ItemSuraDetails({required this.name, required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "$name(${index + 1})",
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
      style: Theme.of(context).textTheme.titleSmall,
    );
  }
}
