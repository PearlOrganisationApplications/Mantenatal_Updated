import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mantenatal/Constant/App%20Color/constant.dart';
import 'package:provider/provider.dart';

import '../Theme/theme_model.dart';

class ChildInfoPage extends StatefulWidget {
  const ChildInfoPage({Key? key}) : super(key: key);

  @override
  State<ChildInfoPage> createState() => _ChildInfoPageState();
}

class _ChildInfoPageState extends State<ChildInfoPage> {
  bool switchOn = true;
  int groupValue = 0;

  @override
  Widget build(BuildContext context) {
    var themeFlag = Provider
        .of<ThemeNotifier>(context)
        .darkTheme;
    return SafeArea(
      child: Scaffold(
        backgroundColor: themeFlag ? AppColors.mirage : AppColors.creamColor,
        body: LayoutBuilder(builder: (context, constraints) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: constraints.maxHeight,
              width: constraints.maxWidth,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: TextField(
                      style: TextStyle(fontSize: 34),
                      decoration: InputDecoration(
                        hintText: "Child's Name",
                        hintStyle: TextStyle(
                            fontSize: 34, fontWeight: FontWeight.bold),
                        helperText:
                        "Leave the field blank if you didn't have a name yet",
                        helperStyle: TextStyle(fontSize: 15),
                      ),
                      keyboardType: TextInputType.name,
                      cursorHeight: 34,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, bottom: 8.0, top: 8.0),
                    child: Container(
                      // color: AppColors.skyColor,
                      height: MediaQuery
                          .of(context)
                          .size
                          .height / 10 - 9,
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          const Text('It\'s my first labour'),
                          Switch(
                              value: switchOn,
                              activeColor: AppColors.fuchsiaPink,
                              onChanged: (bool value) {
                                setState(() {
                                  switchOn = value;
                                });
                              }),
                        ],
                      ),
                    ),
                  ),
                  TextButton(
                    // style: TextButton.styleFrom(
                    //     backgroundColor: AppColors.fuchsiaPink),
                    onPressed: () {},
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Icon(FontAwesomeIcons.mars),
                        SizedBox(height: 20),
                        Text("Baby boy")
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextButton(
                    // style: TextButton.styleFrom(
                    //     backgroundColor: AppColors.fuchsiaPink),
                    onPressed: () {},
                    child: Row(
                      children: const <Widget>[
                        Icon(FontAwesomeIcons.venus),
                        SizedBox(height: 20),
                        Text("Baby girl"),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      children: const <Widget>[
                        Icon(FontAwesomeIcons.marsAndVenus),
                        SizedBox(height: 20),
                        Text("I don't know yet ")
                      ],
                    ),
                  ),
                  ListTile(
                    leading: Radio<int>(
                      value: 1,
                      groupValue: groupValue,
                      onChanged: (value) {
                        setState(() => groupValue = value!);
                      },
                    ),
                    title: Text.rich(
                      TextSpan(
                        text: "I agree with",
                        style: TextStyle(color: AppColors.white),
                        children: <TextSpan>[
                          TextSpan(
                              text: " terms and conditions",
                              style: TextStyle(color: AppColors.fuchsiaPink))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery
                        .of(context)
                        .size
                        .height / 21,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width / 4,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, 'cycleduration');
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
          );
        }),
      ),
    );
  }
}
