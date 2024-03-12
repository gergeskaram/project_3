import 'package:flutter/material.dart';
import 'package:islam_rrrrrr/my_theme.dart';

class Sebha extends StatefulWidget {
  Sebha({super.key});

  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  double angle = 0;
  int counter = 0;

  int curText = 0;
  List<String> texts = ["سبحان الله", "الحمدلله", "الله اكبر"];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              margin: EdgeInsets.only(left: 60),
              child:
                  Image.asset(height: 100, "assets/images/head_sebha_logo.png"),
            ),
            Container(
              margin: EdgeInsets.only(top: 76),
              height: 200,
              child: GestureDetector(
                onTap: () {
                  onClick();
                },
                child: Transform.rotate(
                  angle: angle,
                  child: Image.asset('assets/images/body_sebha_logo.png'),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "عدد التسبيحات",
          style: Theme.of(context).textTheme.titleMedium,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () {
            onClick();
          },
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: 22),
            margin: EdgeInsets.symmetric(horizontal: 160),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: MyTheme.primaryLight),
            child: Text("$counter"),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 20),
          margin: EdgeInsets.symmetric(horizontal: 120),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: MyTheme.primaryLight),
          child: Text(texts[curText]),
        ),
      ],
    );
  }

  onClick() {
    angle += 5;
    if (counter == 33) {
      curText++;
    }
    curText = curText % 3;
    if (counter == 33)
      counter = 0;
    else
      counter++;
    setState(() {});
  }
}
