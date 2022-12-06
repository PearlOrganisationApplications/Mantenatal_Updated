import 'package:flutter/material.dart';

class ChildInfoPage extends StatefulWidget {
  const ChildInfoPage({Key? key}) : super(key: key);

  @override
  State<ChildInfoPage> createState() => _ChildInfoPageState();
}

class _ChildInfoPageState extends State<ChildInfoPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(builder: (context, constraints) {
          return Container(
            height: constraints.maxHeight,
            width: constraints.maxWidth,
            child: Text('data'),
          );
        }),
      ),
    );
  }
}
