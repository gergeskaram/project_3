import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islam_rrrrrr/home_screen/hadeth/item_hadeth_name.dart';
import 'package:islam_rrrrrr/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islam_rrrrrr/provider/app_config_provider.dart';
import 'package:provider/provider.dart';

class Hadeth extends StatefulWidget {
  @override
  State<Hadeth> createState() => _HadethState();
}

class _HadethState extends State<Hadeth> {
  List<Hedeth> ahdeth = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    if (ahdeth.isEmpty) {
      loadFile();
    }
    return Column(
      children: [
        Center(child: Image.asset("assets/images/hadeth_logo.png")),
        Divider(
          color: provider.isDarkMode()
              ? MyTheme.yellowColor
              : MyTheme.primaryLight,
          thickness: 3,
        ),
        Text(
          AppLocalizations.of(context)!.hadrth_name,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Divider(
          color: provider.isDarkMode()
              ? MyTheme.yellowColor
              : MyTheme.primaryLight,
          thickness: 3,
        ),
        ahdeth.isEmpty
            ? Center(
                child: CircularProgressIndicator(
                  color: MyTheme.blackColor,
                ),
              )
            : Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: provider.isDarkMode()
                          ? MyTheme.yellowColor
                          : MyTheme.primaryLight,
                      thickness: 2,
                    );
                  },
                  itemBuilder: (context, index) {
                    return ItemHadethName(
                      hedeth: ahdeth[index],
                    );
                  },
                  itemCount: ahdeth.length,
                ),
              ),
      ],
    );
  }

  void loadFile() async {
    String hadethContent =
        await rootBundle.loadString('assets/file/ahadeth.txt');
    List<String> headethList = hadethContent.split("#\r\n");
    for (int i = 0; i < headethList.length; i++) {
      List<String> hadthLines = headethList[i].split("\n");
      String title = hadthLines[0];
      hadthLines.removeAt(0);
      Hedeth hedeth = Hedeth(title: title, content: hadthLines);
      ahdeth.add(hedeth);
      setState(() {});
    }
  }
}

class Hedeth {
  String title;

  List<String> content;

  Hedeth({required this.title, required this.content});
}
