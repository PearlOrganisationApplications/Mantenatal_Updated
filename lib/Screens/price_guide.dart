import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../Constant/constant.dart';

class PriceGuide extends StatefulWidget {
  const PriceGuide({Key? key}) : super(key: key);

  @override
  State<PriceGuide> createState() => _PriceGuideState();
}

class _PriceGuideState extends State<PriceGuide> {
  ScrollController _singleChildScrollViewController = ScrollController();
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
            return SingleChildScrollView(
              controller: _singleChildScrollViewController,
              physics: const ScrollPhysics(),
              child: Column(
                children: <Widget>[
                  Text.rich(
                    TextSpan(
                      text: "PRICE",
                      style: TextStyle(
                          color: AppColor.themecolor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(
                          text: " GUIDE",
                          style: TextStyle(color: AppColor.themecolor1),
                        ),
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
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                  GridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 10.0,
                    children: List.generate(
                      choices.length,
                      (index) {
                        return Center(
                          child: SelectCard(
                            choice: choices[index],
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 1.99,
                    width: constrains.maxWidth,
                    child: Column(
                      children: <Widget>[
                        const SizedBox(height: 30),
                        Text.rich(
                          TextSpan(
                            text: "TESTIMONIAL",
                            style: TextStyle(
                                color: AppColor.themecolor,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                              TextSpan(
                                text: " MODULE",
                                style: TextStyle(color: AppColor.themecolor1),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 55.0, right: 55.0, top: 10),
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

                        //*** Caurosule  Slider
                        const SizedBox(height: 10),
                        Expanded(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Card(
                                child: Container(
                                  color: Colors.black,
                                  height: 80,
                                  width: 250,
                                  child: ListTile(
                                    title: Row(
                                      children: <Widget>[
                                        CircleAvatar(
                                            child: Image.asset(
                                                "assets/images/image3.png")),
                                        Text.rich(
                                          TextSpan(
                                              text: "Emma ",
                                              style: TextStyle(
                                                  color: AppColor.textcolor,
                                                  fontSize: 15),
                                              children: [
                                                TextSpan(
                                                  text: "-  Midwife",
                                                  style: TextStyle(
                                                      color: AppColor.textcolor,
                                                      fontSize: 12),
                                                )
                                              ]),
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ],
                                    ),
                                    subtitle: Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Text(
                                        "What you guys do is great, men deserve support too and this is perfect. Keep doing what you're doing MANtenatal",
                                        style: TextStyle(
                                            color: AppColor.textcolor),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Card(
                                child: Container(
                                  color: Colors.black,
                                  height: 80,
                                  width: 250,
                                  child: ListTile(
                                    title: Row(
                                      children: <Widget>[
                                        CircleAvatar(
                                            child: Image.asset(
                                                "assets/images/image3.png")),
                                        Text.rich(
                                          TextSpan(
                                              text: "Andre ",
                                              style: TextStyle(
                                                  color: AppColor.textcolor,
                                                  fontSize: 15),
                                              children: [
                                                TextSpan(
                                                  text: "- New Dad",
                                                  style: TextStyle(
                                                      color: AppColor.textcolor,
                                                      fontSize: 12),
                                                )
                                              ]),
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ],
                                    ),
                                    subtitle: Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Text(
                                        "I had no idea there were so many simple ways to bond with my baby, brilliant MANtenatal",
                                        style: TextStyle(
                                            color: AppColor.textcolor),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Card(
                                child: Container(
                                  color: Colors.black,
                                  height: 80,
                                  width: 250,
                                  child: ListTile(
                                    title: Row(
                                      children: <Widget>[
                                        CircleAvatar(
                                            child: Image.asset(
                                                "assets/images/image3.png")),
                                        Text.rich(
                                          TextSpan(
                                              text: "TOM ",
                                              style: TextStyle(
                                                  color: AppColor.textcolor,
                                                  fontSize: 15),
                                              children: [
                                                TextSpan(
                                                  text: "- new dad",
                                                  style: TextStyle(
                                                      color: AppColor.textcolor,
                                                      fontSize: 12),
                                                )
                                              ]),
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ],
                                    ),
                                    subtitle: Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Text(
                                        "Knowing that things will not always be like the movies has prepared me for the tough times ahead",
                                        style: TextStyle(
                                            color: AppColor.textcolor),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Card(
                                child: Container(
                                  color: Colors.black,
                                  height: 80,
                                  width: 250,
                                  child: ListTile(
                                    title: Row(
                                      children: <Widget>[
                                        CircleAvatar(
                                            child: Image.asset(
                                                "assets/images/image3.png")),
                                        Text.rich(
                                          TextSpan(
                                              text: "Simon ",
                                              style: TextStyle(
                                                  color: AppColor.textcolor,
                                                  fontSize: 15),
                                              children: [
                                                TextSpan(
                                                  text: "- new dad",
                                                  style: TextStyle(
                                                      color: AppColor.textcolor,
                                                      fontSize: 12),
                                                )
                                              ]),
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ],
                                    ),
                                    subtitle: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        "Theory at an absolute minimum. Real life tips I can actually use with my new baby daughter.",
                                        style: TextStyle(
                                            color: AppColor.textcolor),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Card(
                                child: Container(
                                  color: Colors.black,
                                  height: 80,
                                  width: 250,
                                  child: ListTile(
                                    title: Row(
                                      children: <Widget>[
                                        CircleAvatar(
                                          child: Image.asset(
                                              "assets/images/image3.png"),
                                        ),
                                        Text.rich(
                                          TextSpan(
                                            text: "Sam ",
                                            style: TextStyle(
                                                color: AppColor.textcolor,
                                                fontSize: 15),
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: "- new dad",
                                                style: TextStyle(
                                                    color: AppColor.textcolor,
                                                    fontSize: 12),
                                              ),
                                            ],
                                          ),
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ],
                                    ),
                                    subtitle: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        "This course was cheaper than a night out at the pub and it really has helped my confidence about becoming a new dad. Cheers!",
                                        style: TextStyle(
                                            color: AppColor.textcolor),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Card(
                                child: Container(
                                  color: Colors.black,
                                  height: 80,
                                  width: 250,
                                  child: ListTile(
                                    title: Row(
                                      children: <Widget>[
                                        CircleAvatar(
                                            child: Image.asset(
                                                "assets/images/image3.png")),
                                        Text.rich(
                                          TextSpan(
                                              text: "Warren",
                                              style: TextStyle(
                                                  color: AppColor.textcolor,
                                                  fontSize: 15),
                                              children: [
                                                TextSpan(
                                                  text: " - new dad",
                                                  style: TextStyle(
                                                      color: AppColor.textcolor,
                                                      fontSize: 12),
                                                )
                                              ]),
                                        ),
                                      ],
                                    ),
                                    subtitle: Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Text(
                                        "MANtenatal is something that us new dads have been crying out for - it’s casual, informative and the download option allowed me to learn at my own speed. I can honestly say that it was invaluable when it came to the recent birth of our baby daughter.",
                                        style: TextStyle(
                                            color: AppColor.textcolor),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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

//***  Custom  Function For List  **//.
class Choice {
  const Choice(
      {required this.subTitle, required this.title, required this.buttonText});
  final String title;
  final String subTitle;
  final String buttonText;
}

const List<Choice> choices = <Choice>[
  Choice(
      title: 'INSTAGRAM TV',
      subTitle: "FREEMidwife \n      Q&A's",
      buttonText: "FULL SERIES HERE"),
  Choice(title: 'ON DEMAND', subTitle: "£35 \$45 USD", buttonText: "WATCH NOW"),
  Choice(
      title: 'GROUP COURSE', subTitle: "£85\$100 USD", buttonText: "BUY NOW"),
  Choice(
      title: 'PERSONAL 1:1 COURSE',
      subTitle: "£250\$280 USD",
      buttonText: "BUY NOW"),
  Choice(
      title: 'THE FATHER-HOODIE',
      subTitle: "£40\$50 USD",
      buttonText: "ORDER NOW"),
  Choice(
      title: 'THE MANTENATAL BOOK',
      subTitle: "TBC Coming \n       Soon",
      buttonText: "COMING SOON"),
];

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key, required this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    // final TextStyle? textStyle = Theme.of(context).textTheme.headline6;
    return Card(
      color: Colors.black,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 10),
            Text(choice.title,
                style: TextStyle(
                    fontSize: 15,
                    color: AppColor.textcolor,
                    fontWeight: FontWeight.bold)),
            Container(
              height: 130,
              width: 130,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColor.themecolor,
                border: Border.all(color: AppColor.themecolor1, width: 3),
                borderRadius: BorderRadius.circular(150),
              ),
              child: Center(
                child: Text(
                  choice.subTitle,
                  style: TextStyle(color: AppColor.textcolor),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    side: BorderSide(color: AppColor.textcolor)),
                onPressed: () {},
                child: Text(
                  choice.buttonText,
                  style: TextStyle(color: AppColor.textcolor),
                ),
              ),
            ),
            const SizedBox(height: 10)
          ],
        ),
      ),
    );
  }
}

// customCarouselSlider(String textIcon, String subText, String image) {
//   return CarouselSlider(items: [
//     Card(
//       child: Container(
//         height: 200,
//         width: 300,
//         child: ListTile(
//           title: Row(
//             children: <Widget>[
//               CircleAvatar(child: Image.asset(image)),
//               Text(
//                 textIcon,
//                 style: const TextStyle(fontSize: 20),
//               ),
//             ],
//           ),
//           subtitle: Text(subText),
//         ),
//       ),
//     ),
//     Card(
//       child: Container(
//         height: 200,
//         width: 300,
//         child: ListTile(
//           title: Row(
//             children: <Widget>[
//               CircleAvatar(child: Image.asset(image)),
//               Text(
//                 textIcon,
//                 style: const TextStyle(fontSize: 20),
//               ),
//             ],
//           ),
//           subtitle: Text(subText),
//         ),
//       ),
//     ),
//   ], options: CarouselOptions());
// }
