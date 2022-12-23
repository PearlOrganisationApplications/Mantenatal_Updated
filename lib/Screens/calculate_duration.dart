import 'package:flutter/material.dart';
import 'package:mantenatal/Constant/App%20Color/constant.dart';
import 'package:provider/provider.dart';

import '../Theme/theme_model.dart';

enum SingingCharacter { one, two, three, four }

class CalculateDuration extends StatefulWidget {
  const CalculateDuration({super.key});

  @override
  State<CalculateDuration> createState() => _CalculateDurationState();
}

class _CalculateDurationState extends State<CalculateDuration> {
  SingingCharacter? _character = SingingCharacter.one;

  @override
  Widget build(BuildContext context) {
    var themeFlag = Provider.of<ThemeNotifier>(context).darkTheme;
    return SafeArea(
      child: Scaffold(
        backgroundColor: themeFlag ? AppColors.mirage : AppColors.creamColor,
        appBar: AppBar(
          backgroundColor: themeFlag ? AppColors.mirage : AppColors.creamColor,
          elevation: 0,
          title: Text("Calculate Duration"),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(padding: EdgeInsets.all(8.0)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.fuchsiaPink,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: MediaQuery.of(context).size.height / 21,
                  width: MediaQuery.of(context).size.width / 1,
                  child: RadioListTile<SingingCharacter>(
                    title: const Text('Lafayette'),
                    value: SingingCharacter.one,
                    groupValue: _character,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.fuchsiaPink,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: MediaQuery.of(context).size.height / 21,
                  width: MediaQuery.of(context).size.width / 1,
                  child: RadioListTile<SingingCharacter>(
                    title: const Text('Lafayette'),
                    value: SingingCharacter.two,
                    groupValue: _character,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.fuchsiaPink,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: MediaQuery.of(context).size.height / 21,
                  width: MediaQuery.of(context).size.width / 1,
                  child: RadioListTile<SingingCharacter>(
                    title: const Text('Lafayette'),
                    value: SingingCharacter.three,
                    groupValue: _character,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.fuchsiaPink,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: MediaQuery.of(context).size.height / 21,
                  width: MediaQuery.of(context).size.width / 1,
                  child: RadioListTile<SingingCharacter>(
                    title: const Text('Lafayette'),
                    value: SingingCharacter.four,
                    groupValue: _character,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 21),
              SizedBox(
                height: MediaQuery.of(context).size.height / 21,
                width: MediaQuery.of(context).size.width / 2,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.skyColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'duescreen');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const <Widget>[
                      Text("Next"),
                      Image(
                        image: AssetImage("assets/images/baby.png"),
                        width: 20,
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
