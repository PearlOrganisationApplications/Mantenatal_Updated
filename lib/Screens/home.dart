// import 'package:flutter/material.dart';
// import 'package:mantenatal/Constant/App%20Color/constant.dart';
// import 'package:percent_indicator/linear_percent_indicator.dart';
//
// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);
//
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         iconTheme: const IconThemeData(color: Colors.white),
//         backgroundColor: Colors.black12,
//         // automaticallyImplyLeading: false,
//         title: Text.rich(
//           TextSpan(
//             text: "M",
//             style: const TextStyle(color: Colors.white70),
//             children: <TextSpan>[
//               TextSpan(text: "A", style: TextStyle(color: AppColors.white)),
//               const TextSpan(
//                   text: "Ntenatal", style: TextStyle(color: Colors.white70))
//             ],
//           ),
//         ),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//             DrawerHeader(
//               decoration: const BoxDecoration(color: Colors.black38),
//               child: Text.rich(
//                 TextSpan(
//                   text: "M",
//                   children: <TextSpan>[
//                     TextSpan(
//                         text: "A",
//                         style: TextStyle(color: AppColors.mediumPurple)),
//                     const TextSpan(text: "Ntenatal")
//                   ],
//                 ),
//               ),
//             ),
//             ListTile(
//               leading: const Icon(Icons.account_circle_rounded),
//               title: const Text(' About Us'),
//               onTap: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => const Home()));
//               },
//             ),
//             ListTile(
//               leading: const Icon(
//                 Icons.play_circle,
//               ),
//               title: const Text('Course Outline'),
//               onTap: () {
//                 // Navigator.push(
//                 //     context,
//                 //     MaterialPageRoute(
//                 //         builder: (context) => const CourseOutline()));
//               },
//             ),
//             ListTile(
//               leading: const Icon(
//                 Icons.monetization_on,
//               ),
//               title: const Text('Pricing'),
//               onTap: () {
//                 // Navigator.push(
//                 //     context,
//                 //     MaterialPageRoute(
//                 //         builder: (context) => const PriceGuide()));
//               },
//             ),
//             ListTile(
//               leading: const Icon(
//                 Icons.note_alt_rounded,
//               ),
//               title: const Text('Blog'),
//               onTap: () {
//                 Navigator.pop(
//                   context,
//                 );
//               },
//             ),
//             ListTile(
//               leading: const Icon(
//                 Icons.note_alt_rounded,
//               ),
//               title: const Text('Faq'),
//               onTap: () {
//                 // Navigator.push(
//                 //     context,
//                 //     MaterialPageRoute(
//                 //         builder: (context) => const FAQ()));
//               },
//             ),
//             ListTile(
//               leading: const Icon(
//                 Icons.telegram,
//               ),
//               title: const Text('Contact Us'),
//               onTap: () {
//                 Navigator.pop(context);
//               },
//             ),
//           ],
//         ),
//       ),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Container(
//             // color: Colors.white,
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: <Widget>[
//                 const SizedBox(height: 20),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Container(
//                     height: MediaQuery.of(context).size.height / 3,
//                     width: MediaQuery.of(context).size.width * 2,
//                     decoration: BoxDecoration(
//                       color: Colors.black45,
//                       borderRadius: BorderRadius.circular(20),
//                       image: const DecorationImage(
//                           image: AssetImage(
//                             "assets/images/lags.jpg",
//                           ),
//                           fit: BoxFit.cover),
//                       boxShadow: const <BoxShadow>[
//                         BoxShadow(
//                           color: Colors.black,
//                           blurRadius: 2.0,
//                         ),
//                       ],
//                     ),
//                     child: const Padding(
//                       padding: EdgeInsets.all(8.0),
//                       child: Center(
//                         child: Text.rich(
//                           TextSpan(
//                             text:
//                                 "      READY TO BE THE # BESTDADYOUCANBE ? \n",
//                             style: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 15,
//                                 fontWeight: FontWeight.bold),
//                             children: <TextSpan>[
//                               TextSpan(
//                                 text:
//                                     "'MANtenatel should be 'MANdatory' for All expecting Dads & Birth Partners!'",
//                                 style: TextStyle(
//                                     color: Colors.black,
//                                     fontWeight: FontWeight.normal),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 const Padding(padding: EdgeInsets.only(top: 8.0)),
//                 const SizedBox(
//                   height: 30,
//                   child: Image(
//                     image: AssetImage("assets/images/baby.png"),
//                   ),
//                 ),
//                 Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: <Widget>[
//                     const SizedBox(height: 20),
//                     const Padding(
//                       padding: EdgeInsets.all(8.0),
//                       child: Image(
//                           image: AssetImage("assets/images/mantental.jpeg")),
//                     ),
//                     Row(
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       children: <Widget>[
//                         Container(
//                           // margin: const EdgeInsets.only(top: 310),
//                           height: 700,
//                           width: MediaQuery.of(context).size.width,
//                           decoration: const BoxDecoration(
//                             color: Colors.black,
//                             borderRadius: BorderRadius.only(
//                                 bottomLeft: Radius.zero,
//                                 bottomRight: Radius.zero,
//                                 topLeft: Radius.circular(20),
//                                 topRight: Radius.circular(20)),
//                           ),
//                           child: const Padding(
//                             padding: EdgeInsets.only(
//                                 top: 20.0, right: 8.0, left: 8.0),
//                             child: Text(
//                               "Hey there, my name is Gordon and I am a father of 4 children and the founder of MANtenata l. The digital platform designed exclusively for dads and birth partners.I created MANtenatal after attending two 'traditional' antenatal courses. The courses were ok, but they never seemed to give any real focus on preparing men for the amazing and sometimes difficult journey to fatherhood. It was time to act!MANtenatal is a fully digital platform, designed by dads and endorsed by the NHS in the UK, along with Midwives & Doula's from around the world. You get to select the course format that works for you. Do you prefer to chat live with other dads, or perhaps have a private 1:1? Some of you reading this may want to simply download the course and watch it in your own time. No matter your preference, we've got you covered!But that is not all... when you join MANtenatal, you automatically become part of a global squad of guys who can openly talk about MENtal health issues impacting dads too. This is a safe space and nothing is taboo!Our goal is simple... to help all fathers and birth partners be the #bestdadyoucanbe. So let's get started. Simply select the format that works for you!Welcome to MANtenatal.",
//                               textAlign: TextAlign.start,
//                               style:
//                                   TextStyle(fontSize: 19, color: Colors.white),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(
//                       height: 30,
//                       child: Image(
//                         image: AssetImage("assets/images/baby.png"),
//                       ),
//                     ),
//
//                     //***  Percentage Bar Section
//                     const SizedBox(height: 30),
//
//                     Container(
//                       padding: const EdgeInsets.only(
//                         bottom: 5, // Space between underline and text
//                       ),
//                       decoration: const BoxDecoration(
//                         border: Border(
//                           bottom: BorderSide(
//                             color: Colors.pinkAccent,
//                             width: 1.0, // Underline thickness
//                           ),
//                         ),
//                       ),
//                       child: Text.rich(
//                         TextSpan(
//                           text: "THE STATS TELL A",
//                           style: const TextStyle(
//                               color: Colors.white,
//                               fontSize: 15,
//                               fontWeight: FontWeight.bold),
//                           children: <TextSpan>[
//                             TextSpan(
//                               text: " STORY",
//                               style: TextStyle(
//                                   // color: AppColor.themecolor,
//                                   fontWeight: FontWeight.normal),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//
//                     const SizedBox(height: 30),
//                     Row(
//                       children: <Widget>[
//                         Padding(
//                           padding: const EdgeInsets.only(left: 15.0),
//                           child: Container(
//                             // color: AppColor.themecolor,
//                             height: 80,
//                             width: 5,
//                           ),
//                         ),
//                         const SizedBox(width: 30),
//                         const Text(
//                           "These stats show the average responses from\nthe guys who have joined MANtenatal in 2022.",
//                           style: TextStyle(
//                               color: Colors.white,
//                               overflow: TextOverflow.ellipsis),
//                         ),
//                       ],
//                     ),
//
//                     const SizedBox(height: 30),
//
//                     const SizedBox(height: 30),
//                     const Text(
//                       "WHY DO YOU WANT TO ATTEND? – 'BECAUSE I WAS TOLD'",
//                       style: TextStyle(
//                         color: Colors.white,
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(15.0),
//                       child: LinearPercentIndicator(
//                         width: MediaQuery.of(context).size.width - 50,
//                         animation: true,
//                         lineHeight: 20.0,
//                         animationDuration: 2500,
//                         percent: 0.76,
//                         center: const Text("76.0%"),
//                         linearStrokeCap: LinearStrokeCap.round,
//                         // progressColor: AppColor.themecolor,
//                       ),
//                     ),
//                     const SizedBox(height: 30),
//                     const Text(
//                       "BIGGEST WORRY ABOUT FATHERHOOD – 'LACK OF SLEEP' ",
//                       style: TextStyle(
//                         color: Colors.white,
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(15.0),
//                       child: LinearPercentIndicator(
//                         width: MediaQuery.of(context).size.width - 50,
//                         animation: true,
//                         lineHeight: 20.0,
//                         animationDuration: 2500,
//                         percent: 0.91,
//                         center: const Text("91.0%"),
//                         linearStrokeCap: LinearStrokeCap.round,
//                         // progressColor: AppColor.themecolor,
//                       ),
//                     ),
//                     const SizedBox(height: 30),
//                     const Text(
//                       "MY MANTENATAL GOAL IS - 'TO FEEL MORE CONFIDENT' ",
//                       style: TextStyle(
//                         color: Colors.white,
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(15.0),
//                       child: LinearPercentIndicator(
//                         width: MediaQuery.of(context).size.width - 50,
//                         animation: true,
//                         lineHeight: 20.0,
//                         animationDuration: 2500,
//                         percent: 0.84,
//                         center: const Text("84.0%"),
//                         linearStrokeCap: LinearStrokeCap.round,
//                         // progressColor: AppColor.themecolor,
//                       ),
//                     ),
//                     const SizedBox(height: 30),
//                     const Text(
//                       "DO YOU FEEL BETTER PREPARED? 'ABSOLUTELY' ",
//                       style: TextStyle(
//                         color: Colors.white,
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(15.0),
//                       child: LinearPercentIndicator(
//                         width: MediaQuery.of(context).size.width - 50,
//                         animation: true,
//                         lineHeight: 20.0,
//                         animationDuration: 2500,
//                         percent: 1.00,
//                         center: const Text("100.0%"),
//                         linearStrokeCap: LinearStrokeCap.round,
//                         // progressColor: AppColor.themecolor,
//                       ),
//                     ),
//                     const SizedBox(height: 30),
//                     const Text(
//                       "WOULD YOU RECOMMEND MANTENATAL?  'DEFINITELY' ",
//                       style: TextStyle(
//                         color: Colors.white,
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(15.0),
//                       child: LinearPercentIndicator(
//                         width: MediaQuery.of(context).size.width - 50,
//                         animation: true,
//                         lineHeight: 20.0,
//                         animationDuration: 2500,
//                         percent: 1.00,
//                         center: const Text("100.0%"),
//                         linearStrokeCap: LinearStrokeCap.round,
//                         // progressColor: AppColor.themecolor,
//                       ),
//                     ),
//
//                     const SizedBox(
//                       height: 30,
//                       child: Image(
//                         image: AssetImage("assets/images/baby.png"),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     ));
//   }
// }
