import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Constant/constant.dart';

class TestimonialModule extends StatefulWidget {
  const TestimonialModule({Key? key}) : super(key: key);

  @override
  State<TestimonialModule> createState() => _TestimonialModuleState();
}

class _TestimonialModuleState extends State<TestimonialModule> {
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
                  text: "A",
                  style: TextStyle(color: AppColor.themecolor),
                ),
                const TextSpan(
                  text: "Ntenatal",
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
