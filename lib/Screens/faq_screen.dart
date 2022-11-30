import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mantenatal/Constant/constant.dart';

class FAQ extends StatefulWidget {
  const FAQ({Key? key}) : super(key: key);

  @override
  State<FAQ> createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    //     statusBarColor: Colors.white, statusBarBrightness: Brightness.dark));
    return Scaffold(
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
              TextSpan(text: "A", style: TextStyle(color: AppColor.themecolor)),
              const TextSpan(
                  text: "Ntenatal", style: TextStyle(color: Colors.white70))
            ],
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Text.rich(
            TextSpan(
              text: "FREQUENTLY",
              style: TextStyle(
                  color: AppColor.themecolor,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
              children: <TextSpan>[
                TextSpan(
                  text: " ASKED QUESTIONS",
                  style: TextStyle(color: AppColor.themecolor1),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 55.0, right: 55.0, top: 10),
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
                const SizedBox(height: 10),
              ],
            ),
          ),
          Expanded(
            child: ExpandableTheme(
              data: const ExpandableThemeData(
                iconColor: Colors.blue,
                useInkWell: true,
              ),
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                    child: Text(
                        "WHY IS THIS DIFFERENT TO OTHER ANTENATAL CLASSES?",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: AppColor.textcolor)),
                  ),
                  const Card1(),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                        'HOW LONG DOES IT TAKE & WHEN IS THE NEXT COURSE?',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: AppColor.textcolor)),
                  ),
                  const Card2(),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text('CAN I DO THIS VIRTUALLY?',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: AppColor.textcolor)),
                  ),
                  const Card3(),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text('HOW MUCH DOES IT COST?',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: AppColor.textcolor)),
                  ),
                  const Card4(),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text.rich(
                      TextSpan(
                        text: "M",
                        style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        children: <TextSpan>[
                          TextSpan(
                              text: "A",
                              style: TextStyle(
                                  color: AppColor.themecolor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                          const TextSpan(
                              text: "Ntenatal",
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                  ),
                  const Card5(),

                  const SizedBox(height: 10),
                  const SizedBox(
                    height: 30,
                    child: Image(
                      image: AssetImage("assets/images/baby.png"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class Card1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ExpandableNotifier(
//         child: Padding(
//       padding: const EdgeInsets.all(10),
//       child: Card(
//         clipBehavior: Clip.antiAlias,
//         child: Column(
//           children: <Widget>[
//             SizedBox(
//               height: 150,
//               child: Container(
//                 decoration: const BoxDecoration(
//                   color: Colors.orange,
//                   shape: BoxShape.rectangle,
//                 ),
//               ),
//             ),
//             ScrollOnExpand(
//               scrollOnExpand: true,
//               scrollOnCollapse: false,
//               child: ExpandablePanel(
//                 theme: const ExpandableThemeData(
//                   headerAlignment: ExpandablePanelHeaderAlignment.center,
//                   tapBodyToCollapse: true,
//                 ),
//                 header: const Padding(
//                     padding: EdgeInsets.all(10),
//                     child: Text(
//                       "ExpandablePanel",
//                     )),
//                 collapsed: const Text(
//                   loremIpsum,
//                   softWrap: true,
//                   maxLines: 2,
//                   overflow: TextOverflow.ellipsis,
//                 ),
//                 expanded: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     for (var _ in Iterable.generate(5))
//                       const Padding(
//                           padding: EdgeInsets.only(bottom: 10),
//                           child: Text(
//                             loremIpsum,
//                             softWrap: true,
//                             overflow: TextOverflow.fade,
//                           )),
//                   ],
//                 ),
//                 builder: (_, collapsed, expanded) {
//                   return Padding(
//                     padding:
//                         const EdgeInsets.only(left: 10, right: 10, bottom: 10),
//                     child: Expandable(
//                       collapsed: collapsed,
//                       expanded: expanded,
//                       theme: const ExpandableThemeData(crossFadePoint: 0),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     ));
//   }
// }

class Card1 extends StatelessWidget {
  const Card1({super.key});

  @override
  Widget build(BuildContext context) {
    buildImg(Color color, double height) {
      return SizedBox(
          height: height,
          child: Container(
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.rectangle,
            ),
          ));
    }

//***************************** Title Section ****************************/
    buildCollapsed1(String mainTitle) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  mainTitle,
                ),
              ],
            ),
          ),
        ],
      );
    }

    // buildCollapsed2() {
    //   return buildImg(Colors.lightGreenAccent, 150);
    // }

    buildCollapsedButton() {
      return Container();
    }

    buildExpanded1(String aboutTitle, String aboutSubTitle) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  aboutTitle,
                  style: const TextStyle(fontWeight: FontWeight.w700),
                ),
                Text(
                  aboutSubTitle,
                  style: const TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
        ],
      );
    }

    // buildExpanded2() {
    //   return Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: <Widget>[
    //       Row(
    //         children: <Widget>[
    //           Expanded(child: buildImg(Colors.lightGreenAccent, 100)),
    //           Expanded(child: buildImg(Colors.orange, 100)),
    //         ],
    //       ),
    //       Row(
    //         children: <Widget>[
    //           Expanded(child: buildImg(Colors.lightBlue, 100)),
    //           Expanded(child: buildImg(Colors.cyan, 100)),
    //         ],
    //       ),
    //     ],
    //   );
    // }

    buildExpandedButton(
      String paraText,
      String boldTitleText,
      String boldSubTitle,
    ) {
      return Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              paraText,
              softWrap: true,
            ),
            RichText(
              text: TextSpan(
                  text: boldTitleText,
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(
                        text: boldSubTitle,
                        style: const TextStyle(fontWeight: FontWeight.normal))
                  ]),
            ),
          ],
        ),
      );
    }

    return ExpandableNotifier(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
        child: ScrollOnExpand(
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expandable(
                  collapsed: buildCollapsed1(
                      "WHY IS THIS DIFFERENT TO OTHER ANTENATAL CLASSES?"),
                  expanded: buildExpanded1(
                      "WHY IS THIS DIFFERENT TO OTHER ANTENATAL CLASSES?\n",
                      "We're endorsed by the NHS & midwives from across the world.MANtenatal is designed by dads & you can download the course to watch when it suits you."),
                ),
                /************************** With Image *************************/
                // Expandable(
                //   collapsed: buildCollapsed2(),
                //   expanded: buildExpanded2(),
                // ),

                Expandable(
                  collapsed: buildCollapsedButton(),
                  expanded: buildExpandedButton("", "", ""),
                ),
                const Divider(height: 1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Builder(
                      builder: (context) {
                        var controller =
                            ExpandableController.of(context, required: true)!;
                        return TextButton(
                          child: Text(
                            controller.expanded ? "Collapse" : "Expand",
                            style: Theme.of(context)
                                .textTheme
                                .button!
                                .copyWith(color: Colors.deepPurple),
                          ),
                          onPressed: () {
                            controller.toggle();
                          },
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Card2 extends StatelessWidget {
  const Card2({super.key});

  @override
  Widget build(BuildContext context) {
    buildImg(Color color, double height) {
      return SizedBox(
          height: height,
          child: Container(
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.rectangle,
            ),
          ));
    }

    //***************************** Title Section ****************************/
    buildCollapsed1(String mainTitle) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  mainTitle,
                ),
              ],
            ),
          ),
        ],
      );
    }

    // buildCollapsed2() {
    //   return buildImg(Colors.lightGreenAccent, 150);
    // }

    buildCollapsedButton() {
      return Container();
    }

    buildExpanded1(String aboutTitle, String aboutSubTitle) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  aboutTitle,
                  style: const TextStyle(fontWeight: FontWeight.w700),
                ),
                Text(
                  aboutSubTitle,
                  style: const TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
        ],
      );
    }

    // buildExpanded2() {
    //   return Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: <Widget>[
    //       Row(
    //         children: <Widget>[
    //           Expanded(child: buildImg(Colors.lightGreenAccent, 100)),
    //           Expanded(child: buildImg(Colors.orange, 100)),
    //         ],
    //       ),
    //       Row(
    //         children: <Widget>[
    //           Expanded(child: buildImg(Colors.lightBlue, 100)),
    //           Expanded(child: buildImg(Colors.cyan, 100)),
    //         ],
    //       ),
    //     ],
    //   );
    // }

    buildExpandedButton(
      String paraText,
      String boldTitleText,
      String boldSubTitle,
    ) {
      return Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              paraText,
              softWrap: true,
            ),
            RichText(
              text: TextSpan(
                  text: boldTitleText,
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(
                        text: boldSubTitle,
                        style: const TextStyle(fontWeight: FontWeight.normal))
                  ]),
            ),
          ],
        ),
      );
    }

    return ExpandableNotifier(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
        child: ScrollOnExpand(
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expandable(
                  collapsed: buildCollapsed1(
                      "HOW LONG DOES IT TAKE & WHEN IS THE NEXT COURSE?"),
                  expanded: buildExpanded1(
                      "HOW LONG DOES IT TAKE & WHEN IS THE NEXT COURSE?\n",
                      "It depends on what suits you best:Dad Group Live/ Personal 1:1 - 4hrs On Demand - 1.5hrs Contact us to find the next course date that suits you. "),
                ),
                /************************** With Image *************************/
                // Expandable(
                //   collapsed: buildCollapsed2(),
                //   expanded: buildExpanded2(),
                // ),

                Expandable(
                  collapsed: buildCollapsedButton(),
                  expanded: buildExpandedButton("", "", ""),
                ),
                const Divider(height: 1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Builder(
                      builder: (context) {
                        var controller =
                            ExpandableController.of(context, required: true)!;
                        return TextButton(
                          child: Text(
                            controller.expanded ? "Collapse" : "Expand",
                            style: Theme.of(context)
                                .textTheme
                                .button!
                                .copyWith(color: Colors.deepPurple),
                          ),
                          onPressed: () {
                            controller.toggle();
                          },
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Card3 extends StatelessWidget {
  const Card3({super.key});

  @override
  Widget build(BuildContext context) {
    buildImg(Color color, double height) {
      return SizedBox(
          height: height,
          child: Container(
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.rectangle,
            ),
          ));
    }

//***************************** Title Section ****************************/
    buildCollapsed1(String mainTitle) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  mainTitle,
                ),
              ],
            ),
          ),
        ],
      );
    }

    // buildCollapsed2() {
    //   return buildImg(Colors.lightGreenAccent, 150);
    // }

    buildCollapsedButton() {
      return Container();
    }

    buildExpanded1(String aboutTitle, String aboutSubTitle) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  aboutTitle,
                  style: const TextStyle(fontWeight: FontWeight.w700),
                ),
                Text(
                  aboutSubTitle,
                  style: const TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
        ],
      );
    }

    // buildExpanded2() {
    //   return Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: <Widget>[
    //       Row(
    //         children: <Widget>[
    //           Expanded(child: buildImg(Colors.lightGreenAccent, 100)),
    //           Expanded(child: buildImg(Colors.orange, 100)),
    //         ],
    //       ),
    //       Row(
    //         children: <Widget>[
    //           Expanded(child: buildImg(Colors.lightBlue, 100)),
    //           Expanded(child: buildImg(Colors.cyan, 100)),
    //         ],
    //       ),
    //     ],
    //   );
    // }

    buildExpandedButton(
      String paraText,
      String boldTitleText,
      String boldSubTitle,
    ) {
      return Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              paraText,
              softWrap: true,
            ),
            RichText(
              text: TextSpan(
                  text: boldTitleText,
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(
                        text: boldSubTitle,
                        style: const TextStyle(fontWeight: FontWeight.normal))
                  ]),
            ),
          ],
        ),
      );
    }

    return ExpandableNotifier(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
        child: ScrollOnExpand(
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expandable(
                  collapsed: buildCollapsed1("CAN I DO THIS VIRTUALLY?"),
                  expanded: buildExpanded1("CAN I DO THIS VIRTUALLY?\n",
                      "Yes, the course is designed to be completed 100% virtually. You can join online with other dads-to-be or download the course to watch on any device at any time."),
                ),
                /************************** With Image *************************/
                // Expandable(
                //   collapsed: buildCollapsed2(),
                //   expanded: buildExpanded2(),
                // ),

                Expandable(
                  collapsed: buildCollapsedButton(),
                  expanded: buildExpandedButton("", "", ""),
                ),
                const Divider(height: 1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Builder(
                      builder: (context) {
                        var controller =
                            ExpandableController.of(context, required: true)!;
                        return TextButton(
                          child: Text(
                            controller.expanded ? "Collapse" : "Expand",
                            style: Theme.of(context)
                                .textTheme
                                .button!
                                .copyWith(color: Colors.deepPurple),
                          ),
                          onPressed: () {
                            controller.toggle();
                          },
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Card4 extends StatelessWidget {
  const Card4({super.key});

  @override
  Widget build(BuildContext context) {
    buildImg(Color color, double height) {
      return SizedBox(
          height: height,
          child: Container(
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.rectangle,
            ),
          ));
    }

//***************************** Title Section ****************************/
    buildCollapsed1(String mainTitle) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  mainTitle,
                ),
              ],
            ),
          ),
        ],
      );
    }

    // buildCollapsed2() {
    //   return buildImg(Colors.lightGreenAccent, 150);
    // }

    buildCollapsedButton() {
      return Container();
    }

    buildExpanded1(String aboutTitle, String aboutSubTitle) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  aboutTitle,
                  style: const TextStyle(fontWeight: FontWeight.w700),
                ),
                Text(
                  aboutSubTitle,
                  style: const TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
        ],
      );
    }

    // buildExpanded2() {
    //   return Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: <Widget>[
    //       Row(
    //         children: <Widget>[
    //           Expanded(child: buildImg(Colors.lightGreenAccent, 100)),
    //           Expanded(child: buildImg(Colors.orange, 100)),
    //         ],
    //       ),
    //       Row(
    //         children: <Widget>[
    //           Expanded(child: buildImg(Colors.lightBlue, 100)),
    //           Expanded(child: buildImg(Colors.cyan, 100)),
    //         ],
    //       ),
    //     ],
    //   );
    // }

    buildExpandedButton(
      String paraText,
      String boldTitleText,
      String boldSubTitle,
    ) {
      return Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              paraText,
              softWrap: true,
            ),
            RichText(
              text: TextSpan(
                  text: boldTitleText,
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(
                        text: boldSubTitle,
                        style: const TextStyle(fontWeight: FontWeight.normal))
                  ]),
            ),
          ],
        ),
      );
    }

    return ExpandableNotifier(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
        child: ScrollOnExpand(
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expandable(
                  collapsed: buildCollapsed1("HOW MUCH DOES IT COST?"),
                  expanded: buildExpanded1("HOW MUCH DOES IT COST?\n",
                      "We have different options: On Demand - £35 Dad Group Live - £85 Personal 1:1 - £225"),
                ),
                /************************** With Image *************************/
                // Expandable(
                //   collapsed: buildCollapsed2(),
                //   expanded: buildExpanded2(),
                // ),

                Expandable(
                  collapsed: buildCollapsedButton(),
                  expanded: buildExpandedButton("", "", ""),
                ),
                const Divider(height: 1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Builder(
                      builder: (context) {
                        var controller =
                            ExpandableController.of(context, required: true)!;
                        return TextButton(
                          child: Text(
                            controller.expanded ? "Collapse" : "Expand",
                            style: Theme.of(context)
                                .textTheme
                                .button!
                                .copyWith(color: Colors.deepPurple),
                          ),
                          onPressed: () {
                            controller.toggle();
                          },
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Card5 extends StatelessWidget {
  const Card5({super.key});

  @override
  Widget build(BuildContext context) {
    buildImg(Color color, double height) {
      return SizedBox(
          height: height,
          child: Container(
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.rectangle,
            ),
          ));
    }

//***************************** Title Section ****************************/
    buildCollapsed1(String mainTitle) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  mainTitle,
                ),
              ],
            ),
          ),
        ],
      );
    }

    // buildCollapsed2() {
    //   return buildImg(Colors.lightGreenAccent, 150);
    // }

    buildCollapsedButton() {
      return Container();
    }

    buildExpanded1(String aboutTitle, String aboutSubTitle) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  aboutTitle,
                  style: const TextStyle(fontWeight: FontWeight.w700),
                ),
                Text(
                  aboutSubTitle,
                  style: const TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
        ],
      );
    }

    // buildExpanded2() {
    //   return Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: <Widget>[
    //       Row(
    //         children: <Widget>[
    //           Expanded(child: buildImg(Colors.lightGreenAccent, 100)),
    //           Expanded(child: buildImg(Colors.orange, 100)),
    //         ],
    //       ),
    //       Row(
    //         children: <Widget>[
    //           Expanded(child: buildImg(Colors.lightBlue, 100)),
    //           Expanded(child: buildImg(Colors.cyan, 100)),
    //         ],
    //       ),
    //     ],
    //   );
    // }

    buildExpandedButton(
      String paraText,
      String boldTitleText,
      String boldSubTitle,
    ) {
      return Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              paraText,
              softWrap: true,
            ),
            RichText(
              text: TextSpan(
                  text: boldTitleText,
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(
                        text: boldSubTitle,
                        style: const TextStyle(fontWeight: FontWeight.normal))
                  ]),
            ),
          ],
        ),
      );
    }

    return ExpandableNotifier(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
        child: ScrollOnExpand(
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expandable(
                  collapsed: buildCollapsed1("MANtenatal"),
                  expanded: buildExpanded1("MANtenatal\n",
                      "Check out our IGTV channel - MANtenatal & Midwife Q&A and see some of the questions dads ask us."),
                ),
                /************************** With Image *************************/
                // Expandable(
                //   collapsed: buildCollapsed2(),
                //   expanded: buildExpanded2(),
                // ),

                Expandable(
                  collapsed: buildCollapsedButton(),
                  expanded: buildExpandedButton("", "", ""),
                ),
                const Divider(height: 1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Builder(
                      builder: (context) {
                        var controller =
                            ExpandableController.of(context, required: true)!;
                        return TextButton(
                          child: Text(
                            controller.expanded ? "Collapse" : "Expand",
                            style: Theme.of(context)
                                .textTheme
                                .button!
                                .copyWith(color: Colors.deepPurple),
                          ),
                          onPressed: () {
                            controller.toggle();
                          },
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Card6 extends StatelessWidget {
  const Card6({super.key});

  @override
  Widget build(BuildContext context) {
    buildImg(Color color, double height) {
      return SizedBox(
          height: height,
          child: Container(
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.rectangle,
            ),
          ));
    }

//***************************** Title Section ****************************/
    buildCollapsed1(String mainTitle) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  mainTitle,
                ),
              ],
            ),
          ),
        ],
      );
    }

    // buildCollapsed2() {
    //   return buildImg(Colors.lightGreenAccent, 150);
    // }

    buildCollapsedButton() {
      return Container();
    }

    buildExpanded1(String aboutTitle, String aboutSubTitle) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  aboutTitle,
                  style: const TextStyle(fontWeight: FontWeight.w700),
                ),
                Text(
                  aboutSubTitle,
                  style: const TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
        ],
      );
    }

    // buildExpanded2() {
    //   return Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: <Widget>[
    //       Row(
    //         children: <Widget>[
    //           Expanded(child: buildImg(Colors.lightGreenAccent, 100)),
    //           Expanded(child: buildImg(Colors.orange, 100)),
    //         ],
    //       ),
    //       Row(
    //         children: <Widget>[
    //           Expanded(child: buildImg(Colors.lightBlue, 100)),
    //           Expanded(child: buildImg(Colors.cyan, 100)),
    //         ],
    //       ),
    //     ],
    //   );
    // }

    buildExpandedButton(
      String paraText,
      String boldTitleText,
      String boldSubTitle,
    ) {
      return Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              paraText,
              softWrap: true,
            ),
            RichText(
              text: TextSpan(
                  text: boldTitleText,
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(
                        text: boldSubTitle,
                        style: const TextStyle(fontWeight: FontWeight.normal))
                  ]),
            ),
          ],
        ),
      );
    }

    return ExpandableNotifier(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
        child: ScrollOnExpand(
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expandable(
                  collapsed: buildCollapsed1(
                      "Wird eine bestehende Kundennummer/-konto für eine Bestellung benötigt?"),
                  expanded: buildExpanded1(
                      "Wird eine bestehende Kundennummer/-konto für eine Bestellung benötigt?\n",
                      "Sie können alle Produkte auch ohne Kundennummer bestellen."),
                ),
                /************************** With Image *************************/
                // Expandable(
                //   collapsed: buildCollapsed2(),
                //   expanded: buildExpanded2(),
                // ),

                Expandable(
                  collapsed: buildCollapsedButton(),
                  expanded: buildExpandedButton("", "", ""),
                ),
                const Divider(height: 1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Builder(
                      builder: (context) {
                        var controller =
                            ExpandableController.of(context, required: true)!;
                        return TextButton(
                          child: Text(
                            controller.expanded
                                ? "Antwort ausblenden"
                                : "Antwort lesen",
                            style: Theme.of(context)
                                .textTheme
                                .button!
                                .copyWith(color: Colors.deepPurple),
                          ),
                          onPressed: () {
                            controller.toggle();
                          },
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Card7 extends StatelessWidget {
  const Card7({super.key});

  @override
  Widget build(BuildContext context) {
    buildImg(Color color, double height) {
      return SizedBox(
          height: height,
          child: Container(
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.rectangle,
            ),
          ));
    }

//***************************** Title Section ****************************/
    buildCollapsed1(String mainTitle) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  mainTitle,
                ),
              ],
            ),
          ),
        ],
      );
    }

    // buildCollapsed2() {
    //   return buildImg(Colors.lightGreenAccent, 150);
    // }

    buildCollapsedButton() {
      return Container();
    }

    buildExpanded1(String aboutTitle, String aboutSubTitle) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  aboutTitle,
                  style: const TextStyle(fontWeight: FontWeight.w700),
                ),
                Text(
                  aboutSubTitle,
                  style: const TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
        ],
      );
    }

    // buildExpanded2() {
    //   return Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: <Widget>[
    //       Row(
    //         children: <Widget>[
    //           Expanded(child: buildImg(Colors.lightGreenAccent, 100)),
    //           Expanded(child: buildImg(Colors.orange, 100)),
    //         ],
    //       ),
    //       Row(
    //         children: <Widget>[
    //           Expanded(child: buildImg(Colors.lightBlue, 100)),
    //           Expanded(child: buildImg(Colors.cyan, 100)),
    //         ],
    //       ),
    //     ],
    //   );
    // }

    buildExpandedButton(
      String paraText,
      String boldTitleText,
      String boldSubTitle,
    ) {
      return Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              paraText,
              softWrap: true,
            ),
            RichText(
              text: TextSpan(
                  text: boldTitleText,
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(
                        text: boldSubTitle,
                        style: const TextStyle(fontWeight: FontWeight.normal))
                  ]),
            ),
          ],
        ),
      );
    }

    return ExpandableNotifier(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
        child: ScrollOnExpand(
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expandable(
                  collapsed: buildCollapsed1("Wer ist Robert Franz?"),
                  expanded: buildExpanded1("Wer ist Robert Franz?\n",
                      "Robert Franz ist ein Naturphilosoph und propagiert die natürliche Gesundheit/Heilung. Weitere Informationen über Robert Franz finden Sie hier."),
                ),
                /************************** With Image *************************/
                // Expandable(
                //   collapsed: buildCollapsed2(),
                //   expanded: buildExpanded2(),
                // ),

                Expandable(
                  collapsed: buildCollapsedButton(),
                  expanded: buildExpandedButton("", "", ""),
                ),
                const Divider(height: 1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Builder(
                      builder: (context) {
                        var controller =
                            ExpandableController.of(context, required: true)!;
                        return TextButton(
                          child: Text(
                            controller.expanded
                                ? "Antwort ausblenden"
                                : "Antwort lesen",
                            style: Theme.of(context)
                                .textTheme
                                .button!
                                .copyWith(color: Colors.deepPurple),
                          ),
                          onPressed: () {
                            controller.toggle();
                          },
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Card8 extends StatelessWidget {
  const Card8({super.key});

  @override
  Widget build(BuildContext context) {
    buildImg(Color color, double height) {
      return SizedBox(
          height: height,
          child: Container(
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.rectangle,
            ),
          ));
    }

//***************************** Title Section ****************************/
    buildCollapsed1(String mainTitle) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  mainTitle,
                ),
              ],
            ),
          ),
        ],
      );
    }

    buildCollapsed2() {
      return buildImg(Colors.lightGreenAccent, 150);
    }

    buildCollapsedButton() {
      return Container();
    }

    buildExpanded1(String aboutTitle, String aboutSubTitle) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  aboutTitle,
                  style: const TextStyle(fontWeight: FontWeight.w700),
                ),
                Text(
                  aboutSubTitle,
                  style: const TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
        ],
      );
    }

    // buildExpanded2() {
    //   return Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: <Widget>[
    //       Row(
    //         children: <Widget>[
    //           Expanded(child: buildImg(Colors.lightGreenAccent, 100)),
    //           Expanded(child: buildImg(Colors.orange, 100)),
    //         ],
    //       ),
    //       Row(
    //         children: <Widget>[
    //           Expanded(child: buildImg(Colors.lightBlue, 100)),
    //           Expanded(child: buildImg(Colors.cyan, 100)),
    //         ],
    //       ),
    //     ],
    //   );
    // }

    buildExpandedButton(
      String paraText,
      String boldTitleText,
      String boldSubTitle,
    ) {
      return Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              paraText,
              softWrap: true,
            ),
            RichText(
              text: TextSpan(
                  text: boldTitleText,
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(
                        text: boldSubTitle,
                        style: const TextStyle(fontWeight: FontWeight.normal))
                  ]),
            ),
          ],
        ),
      );
    }

    return ExpandableNotifier(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
        child: ScrollOnExpand(
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expandable(
                  collapsed: buildCollapsed1(
                      "Kann ich eine persönliche Beratung von Robert Franz beanspruchen?"),
                  expanded: buildExpanded1(
                      "Kann ich eine persönliche Beratung von Robert Franz beanspruchen?\n",
                      "Robert Franz bietet aktuell keine persönliche Beratung an. Gesundheitsfragen können somit leider nicht beantwortet werden."),
                ),
                /************************** With Image *************************/
                // Expandable(
                //   collapsed: buildCollapsed2(),
                //   expanded: buildExpanded2(),
                // ),

                Expandable(
                  collapsed: buildCollapsedButton(),
                  expanded: buildExpandedButton("", "", ""),
                ),
                const Divider(height: 1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Builder(
                      builder: (context) {
                        var controller =
                            ExpandableController.of(context, required: true)!;
                        return TextButton(
                          child: Text(
                            controller.expanded
                                ? "Antwort ausblenden"
                                : "Antwort lesen",
                            style: Theme.of(context)
                                .textTheme
                                .button!
                                .copyWith(color: Colors.deepPurple),
                          ),
                          onPressed: () {
                            controller.toggle();
                          },
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class Card3 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     buildItem(String label) {
//       return Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: Text(label),
//       );
//     }
//
//     buildList() {
//       return Column(
//         children: <Widget>[
//           for (var i in [1, 2, 3, 4]) buildItem("Item ${i}"),
//         ],
//       );
//     }
//
//     return ExpandableNotifier(
//         child: Padding(
//       padding: const EdgeInsets.all(10),
//       child: ScrollOnExpand(
//         child: Card(
//           clipBehavior: Clip.antiAlias,
//           child: Column(
//             children: <Widget>[
//               ExpandablePanel(
//                 theme: const ExpandableThemeData(
//                   headerAlignment: ExpandablePanelHeaderAlignment.center,
//                   tapBodyToExpand: true,
//                   tapBodyToCollapse: true,
//                   hasIcon: false,
//                 ),
//                 header: Container(
//                   color: Colors.indigoAccent,
//                   child: Padding(
//                     padding: const EdgeInsets.all(10.0),
//                     child: Row(
//                       children: [
//                         ExpandableIcon(
//                           theme: const ExpandableThemeData(
//                             expandIcon: Icons.arrow_right,
//                             collapseIcon: Icons.arrow_drop_down,
//                             iconColor: Colors.white,
//                             iconSize: 28.0,
//                             iconRotationAngle: math.pi / 2,
//                             iconPadding: EdgeInsets.only(right: 5),
//                             hasIcon: false,
//                           ),
//                         ),
//                         Expanded(
//                           child: Text(
//                             "Items",
//                             style: Theme.of(context)
//                                 .textTheme
//                                 .bodyText1!
//                                 .copyWith(color: Colors.white),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 collapsed: Container(),
//                 expanded: buildList(),
//               ),
//             ],
//           ),
//         ),
//       ),
//     ));
//   }
// }
