import 'package:flutter/material.dart';
import 'package:scroll_time_picker/scroll_time_picker.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Scroll Time Picker Example"),
        ),
        body: ScrollTimePicker(
          decoration: TimePickerDecoration(
            indicatorDecoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              color: Colors.grey.withOpacity(0.3),
            ),
          ),
        ));
  }
}
