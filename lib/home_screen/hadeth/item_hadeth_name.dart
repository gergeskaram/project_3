import 'package:flutter/material.dart';
import 'package:islam_rrrrrr/home_screen/hadeth/hadeth_details_screen.dart';
import 'package:islam_rrrrrr/home_screen/hadeth/hadeth_tap.dart';
import 'package:islam_rrrrrr/home_screen/quran/sura_details_screen.dart';

class ItemHadethName extends StatelessWidget {
  Hedeth hedeth;

  ItemHadethName({
    required this.hedeth,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(HadethDetailsScreen.routeName, arguments: hedeth);
      },
      child: Text(
        hedeth.title,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}
