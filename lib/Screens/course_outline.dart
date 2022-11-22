import 'package:flutter/material.dart';

import '../Constant/constant.dart';

class CourseOutline extends StatelessWidget {
  const CourseOutline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.black12,
          // automaticallyImplyLeading: false,
          title: Text.rich(
            TextSpan(
              text: "M",
              style: const TextStyle(color: Colors.white70),
              children: <TextSpan>[
                TextSpan(
                    text: "A", style: TextStyle(color: AppColor.themecolor)),
                const TextSpan(
                    text: "Ntenatal", style: TextStyle(color: Colors.white70))
              ],
            ),
          ),
        ),
        body: LayoutBuilder(
          builder: (context, constrains) {
            return Container(
              height: constrains.maxHeight,
              width: constrains.maxWidth,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 30),
                  Text.rich(
                    TextSpan(
                      text: "COURSE",
                      style: TextStyle(
                          color: AppColor.themecolor1,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(
                            text: " OUTLINE",
                            style: TextStyle(color: AppColor.themecolor)),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 55.0, right: 55.0, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          width: 100,
                          // color: Colors.green,
                          child: Divider(
                            color: Colors.teal.shade100,
                            thickness: 2.0,
                          ),
                        ),
                        Container(
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                              color: AppColor.themecolor1,
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        Container(
                          width: 100,
                          // color: Colors.green,
                          child: Divider(
                            color: Colors.teal.shade100,
                            thickness: 2.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.circular(150),
                    ),
                    child: Image.asset(
                      "assets/images/Icon_Coffee-1.png",
                      height: 50,
                      width: 50,
                      // scale: 0.5,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "1. DISCUSS & SHARE",
                    style: TextStyle(
                        color: AppColor.textcolor, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "  Talk about your hopes & share \n your concerns about fatherhood",
                    style: TextStyle(color: AppColor.textcolor),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.circular(150),
                    ),
                    child: Image.asset(
                      "assets/images/Icon_Fetus-1.png",
                      height: 50,
                      width: 50,
                      // scale: 0.5,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "2. BEFORE BIRTH",
                    style: TextStyle(
                        color: AppColor.textcolor, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "  Practical tips to help you prepare for the \narrival of your baby & how to support mum",
                    style: TextStyle(color: AppColor.textcolor),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.circular(150),
                    ),
                    child: Image.asset(
                      "assets/images/Icon_Beyond-1.png",
                      height: 50,
                      width: 50,
                      // scale: 0.5,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "3. BIRTH & BEYOND",
                    style: TextStyle(
                        color: AppColor.textcolor, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "  What to expect - Vaginal & C-Section + \n            your role when baby arrives",
                    style: TextStyle(color: AppColor.textcolor),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.circular(150),
                    ),
                    child: Image.asset(
                      "assets/images/Icon_Dad_Happy-1.png",
                      height: 50,
                      width: 50,
                      // scale: 0.5,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "4. HAPPY DAD",
                    style: TextStyle(
                        color: AppColor.textcolor, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "  Bonding with your baby. Focus on MENtal \n         health + ongoing support for dad",
                    style: TextStyle(color: AppColor.textcolor),
                  ),
                  SizedBox(height: 10),
                  const SizedBox(
                    height: 30,
                    child: Image(
                      image: AssetImage("assets/images/baby.png"),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
