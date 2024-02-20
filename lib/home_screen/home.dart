import 'package:flutter/material.dart';
import 'package:islam_rrrrrr/home_screen/hadeth/hadeth_tap.dart';
import 'package:islam_rrrrrr/home_screen/quran/quran_tap.dart';
import 'package:islam_rrrrrr/home_screen/radio/radio_tab.dart';
import 'package:islam_rrrrrr/home_screen/sebha/sebha_tap.dart';
import 'package:islam_rrrrrr/my_theme.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home_screen";

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/background.png'),
        Scaffold(
          appBar: AppBar(
            title: Text(
              'islam',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(canvasColor: MyTheme.primaryLight),
            child: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (index) {
                selectedIndex = index;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/radio.png')),
                  label: "radio",
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                  label: "sebha",
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                      AssetImage('assets/images/quran-quran-svgrepo-com.png')),
                  label: "hadeth",
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/quran.png')),
                  label: "quran",
                ),
              ],
            ),
          ),
          body: tabs[selectedIndex],
        ),
      ],
    );
  }

  List<Widget> tabs = [Quran(), Sebha(), Hadeth(), Radioo()];
}
