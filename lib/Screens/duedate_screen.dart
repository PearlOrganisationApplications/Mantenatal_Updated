import 'package:flutter/material.dart';
import 'package:mantenatal/Screens/home.page.dart';

class DueDateScreen extends StatefulWidget {
  const DueDateScreen({Key? key}) : super(key: key);

  @override
  State<DueDateScreen> createState() => _DueDateScreenState();
}

class _DueDateScreenState extends State<DueDateScreen> {
  DateTime date = DateTime(2022, 12, 24);

  // void _showDatePicker() {
  //   showDatePicker(
  //     context: context,
  //     initialDate: _dateTime,
  //     firstDate: DateTime(2000),
  //     lastDate: DateTime.now(),
  //   ).then((value) {
  //     setState(() {
  //       _dateTime = value!;
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Expected due date"),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Center(child: Text('${date.year}/${date.month}/${date.day}')),
                Center(
                  child: MaterialButton(
                    onPressed: () async {
                      DateTime? newDate = await showDatePicker(
                        context: context,
                        initialDate: date,
                        firstDate: DateTime(1900),
                        lastDate: DateTime(2025),
                      );
                      if (newDate == null) return;
                      setState(() {
                        date = newDate;
                      });
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Choose Date"),
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Text("Next"))
              ],
            );
          },
        ),
      ),
    );
  }
}
