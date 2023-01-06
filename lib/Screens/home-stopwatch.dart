import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mantenatal/Constant/App%20Color/constant.dart';

class LapStopWatch extends StatefulWidget {
  const LapStopWatch({Key? key}) : super(key: key);

  @override
  State<LapStopWatch> createState() => _LapStopWatchState();
}

class _LapStopWatchState extends State<LapStopWatch> {
  var odd;

  ///***  Create a business Logic For Timer.

  int second = 0, minutes = 0;

  String digitSecond = "00", digitMin = "00";
  Timer? timer;
  bool started = false;
  List laps = [];

  ///*** Create function  To Stop Timer

  void stopTimer() {
    timer!.cancel();
    setState(() {
      started = false;
    });
  }

  ///*** Create Function to Clear  Timer

  void Reset() {
    timer!.cancel();
    setState(() {
      second = 0;
      minutes = 0;

      digitSecond = "00";
      digitMin = "00";
      started = false;
    });
  }

  //*** Now We Going To Create Function For Laps

  void addLaps() {
    String lap = "$digitMin:$digitSecond";
    setState(() {
      laps.add(lap);
    });
  }

  //*** Now We Going To Create Function For Start Timer.

  void startTimer() {
    started = true;
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      int localSecond = second + 1;
      int localMintues = minutes;

      if (localSecond > 59) {
        localMintues++;
        localSecond = 0;
      }
      setState(() {
        second = localSecond;
        minutes = localMintues;
        digitSecond = (second >= 10) ? "$second" : "0$second";
        digitMin = (second >= 10) ? "$minutes" : "0$minutes";
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackPearl,
      body: SafeArea(child: LayoutBuilder(
        builder: (BuildContext, BoxConstraints) {
          return Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Text(
                    "Contraction",
                    style:
                        TextStyle(color: AppColors.fuchsiaPink, fontSize: 35),
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    // Center(
                    //   child: Text(
                    //     "00:00",
                    //     style: TextStyle(
                    //       color: AppColors.metgoldenColor,
                    //     ),
                    //   ),
                    // ),
                    // Center(
                    //   child: Text(
                    //     "00:00",
                    //     style: TextStyle(
                    //       color: AppColors.fuchsiaPink,
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
                Center(
                  child: Text(
                    "$digitMin:$digitSecond",
                    style: TextStyle(
                        color: AppColors.metgoldenColor, fontSize: 35),
                  ),
                ),
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                      color: Color(0xFF323F68),
                      borderRadius: BorderRadius.circular(20)),
                  child: ListView.builder(
                      itemCount: laps.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("Lap n°${index + 1}",
                                  style: TextStyle(
                                      color: index.isOdd
                                          ? AppColors.metgoldenColor
                                          : AppColors.fuchsiaPink)),
                              Text(
                                "${laps[index]}",
                                style: TextStyle(
                                    color: index.isOdd
                                        ? AppColors.metgoldenColor
                                        : AppColors.fuchsiaPink),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
                SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: RawMaterialButton(
                        onPressed: () {
                          (!started) ? startTimer() : stopTimer();
                        },
                        shape: StadiumBorder(
                          side: BorderSide(
                            color: AppColors.fuchsiaPink,
                          ),
                        ),
                        child: Text(
                          (!started) ? "Contraction Start" : "Contraction Stop",
                          style: TextStyle(
                            color: AppColors.metgoldenColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    IconButton(
                        onPressed: () {
                          addLaps();
                        },
                        icon: Icon(Icons.flag_circle,
                            color: AppColors.fuchsiaPink, size: 35)),
                    SizedBox(width: 5),
                    Expanded(
                      child: RawMaterialButton(
                        onPressed: () {
                          Reset();
                        },
                        shape: StadiumBorder(
                          side: BorderSide(
                            color: AppColors.fuchsiaPink,
                          ),
                        ),
                        child: Text(
                          "Reset",
                          style: TextStyle(
                            color: AppColors.metgoldenColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      )),
    );
  }
}
// https://www.youtube.com/watch?v=iI-BR-fr0bQ

// 15:42
