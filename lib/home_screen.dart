
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'Constant/App Color/constant.dart';
import 'Screens/discord_link.dart';
import 'Screens/countdown.dart';
import 'Screens/stopwatch.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var currentIndex = 0;
  final List<Widget> _pages = const [
    StopWatch(),
    CountDown(),
    DiscordLink(),
  ];

  selectPage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.reactCircle,
        initialActiveIndex: currentIndex,
        backgroundColor: primaryColor,
        onTap: (index) => selectPage(index),
        items: [
          buildTabItem(icon: Icons.timer_outlined, index: 0),
          buildTabItem(icon: Icons.hourglass_empty, index: 1),
          buildTabItem(icon: Icons.discord, index: 2)
        ],
      ),
      body: _pages[currentIndex],
    );
  }

  TabItem<dynamic> buildTabItem({
    required IconData icon,
    required int index,
  }) {
    return TabItem(
      icon: Icon(
        icon,
        color: currentIndex == index ? primaryColor : Colors.white,
      ),
    );
  }
}
