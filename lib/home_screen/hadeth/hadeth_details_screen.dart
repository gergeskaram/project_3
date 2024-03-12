import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islam_rrrrrr/home_screen/hadeth/hadeth_tap.dart';
import 'package:islam_rrrrrr/home_screen/quran/item_sura_details.dart';
import 'package:islam_rrrrrr/my_theme.dart';
import 'package:islam_rrrrrr/provider/app_config_provider.dart';
import 'package:provider/provider.dart';

class HadethDetailsScreen extends StatefulWidget {
  static const String routeName = 'Hadeth_details_screen';

  @override
  State<HadethDetailsScreen> createState() => _HadethDetailsScreenState();
}

class _HadethDetailsScreenState extends State<HadethDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hedeth;
    var provider = Provider.of<AppConfigProvider>(context);
    return Stack(
      children: [
        provider.isDarkMode()
            ? Image.asset('assets/images/dark_bg.png')
            : Image.asset('assets/images/background.png'),
        Scaffold(
          appBar: AppBar(
            title: Text(
              '${args.title}',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          body: Container(
            margin: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.06,
              horizontal: MediaQuery.of(context).size.width * 0.05,
            ),
            decoration: BoxDecoration(
                color: provider.isDarkMode()
                    ? MyTheme.primaryDark
                    : MyTheme.whiteColor,
                borderRadius: BorderRadius.circular(25)),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Text(args.content[index]);
              },
              itemCount: args.content.length,
            ),
          ),
        ),
      ],
    );
  }
}
