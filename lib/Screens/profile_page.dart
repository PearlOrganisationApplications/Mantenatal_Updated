import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mantenatal/Screens/home-stopwatch.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

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
        // backgroundColor: themeFlag ? AppColors.blackPearl : AppColors.creamColor,
        backgroundColor: AppColors.blackPearl,
        body: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(
                    height: 90,
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Container(
                  //     height: 150,
                  //     width: 150,
                  //     child: const Image(
                  //       image: AssetImage("assets/images/logo.png"),
                  //     ),
                  //   ),
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 15.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LapStopWatch(),
                          ),
                        );
                      },
                      child: Container(
                        //alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height * 0.25,
                        decoration: BoxDecoration(
                          // image: const DecorationImage(
                          //     fit: BoxFit.cover,
                          //     image:
                          //         AssetImage("assets/images/ultrasound.jpg")),
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
                                "Check Your Contraction",
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
                              // Text(
                              //   "Calculate your due date and learn all about pregnancy to feel prepared",
                              //   style: TextStyle(
                              //     color: themeFlag
                              //         ? AppColors.metgoldenColor
                              //         : AppColors.blueZodiacTwo,
                              //     fontSize: 18.0,
                              //     fontWeight: FontWeight.bold,
                              //     fontFamily: GoogleFonts.lato().fontFamily,
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 50),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15.0,
                      right: 15.0,
                      bottom: 15.0,
                    ),
                    child: GestureDetector(
                      onTap: (() {
                        var url = "https://discord.com/invite/9eZg4hm7";
                        _launchUrl(url);
                      }),
                      child: Container(
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height * 0.25,
                        decoration: BoxDecoration(
                          // image: const DecorationImage(
                          //     fit: BoxFit.cover,
                          //     image: AssetImage("assets/images/ovlt.jpg")),
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
                                "Join Our Discord Server",
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
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.15,
                  ),
                ],
              ),
            );
          },
        ),
        // floatingActionButton: FloatingActionButton(
        //   backgroundColor: themeFlag ? AppColors.creamColor : AppColors.mirage,
        //   foregroundColor: themeFlag ? AppColors.mirage : AppColors.creamColor,
        //   onPressed: _toggleTheme,
        //   child: Icon(themeFlag ? FontAwesomeIcons.sun : FontAwesomeIcons.moon),
        // ),
      ),
    );
  }
  _launchUrl(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print("Not Supported");
    }
  }
}
