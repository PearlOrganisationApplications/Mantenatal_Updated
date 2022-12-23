import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mantenatal/Screens/child_info.dart';
import 'package:provider/provider.dart';

import '../Constant/App Color/constant.dart';
import '../Theme/theme_model.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  void _toggleTheme() {
    final setting = Provider.of<ThemeNotifier>(context, listen: false);
    setting.toggleTheme();
  }

  @override
  Widget build(BuildContext context) {
    var themeFlag = Provider.of<ThemeNotifier>(context).darkTheme;
    return SafeArea(
      child: Scaffold(
        backgroundColor: themeFlag ? AppColors.mirage : AppColors.creamColor,
        body: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  const SizedBox(
                    height: 90,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 150,
                      width: 150,
                      child: const Image(
                        image: AssetImage("assets/images/Logo_About-1.png"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15.0,
                      right: 15.0,
                      bottom: 15.0,
                    ),
                    child: GestureDetector(
                      onTap: (() {}),
                      child: Container(
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height * 0.25,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/ovlt.jpg")),
                          color: themeFlag
                              ? AppColors.mirage
                              : AppColors.creamColor,
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [
                            BoxShadow(
                                color: themeFlag
                                    ? AppColors.blackPearl
                                    : AppColors.shedowgreyColor,
                                blurRadius: 5,
                                spreadRadius: 1,
                                offset: const Offset(0, 4))
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 25.0,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Text(
                                "I want to get pregnant",
                                style: TextStyle(
                                  color: themeFlag
                                      ? AppColors.metgoldenColor
                                      : AppColors.blueZodiacTwo,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: GoogleFonts.lato().fontFamily,
                                ),
                              ),
                              const SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                "Follow nutritional and mental health tips to increase your chances",
                                style: TextStyle(
                                  color: themeFlag
                                      ? AppColors.metgoldenColor
                                      : AppColors.blueZodiacTwo,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: GoogleFonts.lato().fontFamily,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 15.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ChildInfoPage(),
                          ),
                        );
                      },
                      child: Container(
                        //alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height * 0.25,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image:
                                  AssetImage("assets/images/ultrasound.jpg")),
                          color: themeFlag
                              ? AppColors.mirage
                              : AppColors.creamColor,
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                color: themeFlag
                                    ? AppColors.blackPearl
                                    : AppColors.shedowgreyColor,
                                blurRadius: 5,
                                spreadRadius: 1,
                                offset: const Offset(0, 4))
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Text(
                                "I'm Pregnant",
                                style: TextStyle(
                                  color: themeFlag
                                      ? AppColors.metgoldenColor
                                      : AppColors.blueZodiacTwo,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: GoogleFonts.lato().fontFamily,
                                ),
                              ),
                              const SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                "Calculate your due date and learn all about pregnancy to feel prepared",
                                style: TextStyle(
                                  color: themeFlag
                                      ? AppColors.metgoldenColor
                                      : AppColors.blueZodiacTwo,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: GoogleFonts.lato().fontFamily,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.15,
                  ),
                ],
              ),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: themeFlag ? AppColors.creamColor : AppColors.mirage,
          foregroundColor: themeFlag ? AppColors.mirage : AppColors.creamColor,
          onPressed: _toggleTheme,
          child: Icon(themeFlag ? FontAwesomeIcons.sun : FontAwesomeIcons.moon),
        ),
      ),
    );
  }
}
