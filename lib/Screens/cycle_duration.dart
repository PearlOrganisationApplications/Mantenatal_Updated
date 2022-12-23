import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mantenatal/Screens/calculate_duration.dart';
import 'package:provider/provider.dart';

import '../Constant/App Color/constant.dart';
import '../Theme/theme_model.dart';

class CycleDuration extends StatefulWidget {
  const CycleDuration({Key? key}) : super(key: key);

  @override
  State<CycleDuration> createState() => _CycleDurationState();
}

class _CycleDurationState extends State<CycleDuration> {
  static const List<String> cycleDuration = <String>[
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
    "16",
    "17",
    "18",
    "19",
    "20",
    "21",
    "22",
    "23",
    "24",
    "25",
    "26",
    "27",
    "28",
    "29",
    "30",
    "31",
  ];

  @override
  Widget build(BuildContext context) {
    var themeFlag = Provider.of<ThemeNotifier>(context).darkTheme;
    return SafeArea(
      child: CupertinoPageScaffold(
        backgroundColor: themeFlag ? AppColors.mirage : AppColors.creamColor,
        navigationBar: CupertinoNavigationBar(
          middle: Text(
            "Cycle Duration",
            style: TextStyle(color: AppColors.blackPearl),
          ),
          backgroundColor: themeFlag ? AppColors.mirage : AppColors.creamColor,
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: constraints.maxHeight,
                width: constraints.maxWidth,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CupertinoPicker(
                      magnification: 2.2,
                      itemExtent: 64,
                      onSelectedItemChanged: (int value) {},
                      children: List<Widget>.generate(
                        cycleDuration.length,
                        (int index) {
                          return Text(cycleDuration[index]);
                        },
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 2,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "I don't know",
                        style: TextStyle(
                            color: AppColors.fuchsiaPink, fontSize: 17),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 20,
                      width: MediaQuery.of(context).size.width / 3,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, 'calculateduration');
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const <Widget>[
                            Text("Next"),
                            Image(
                              image: AssetImage("assets/images/baby.png"),
                              width: 40,
                              height: 40,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
