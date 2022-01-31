import 'package:flutter/material.dart';
import 'package:scroll_time_picker/src/models/time_picker_decoration.dart';
import 'package:scroll_time_picker/src/models/time_picker_properties.dart';

/// TODO. loop -> AM, PM 자동 애니메이션 & 시간은 1 ~ 12 & 분 간격은 디폴트가 1분, 설정 가능하도록
/// TODO. loop x -> 시간은 1 ~ 12시 & 분 간격은 디폴트가 1분, 설정 가능하도록

class ScrollTimePicker extends StatefulWidget {
  const ScrollTimePicker({
    Key? key,
    this.decoration = const TimePickerDecoration(),
    this.properties = const TimePickerProperties(),
  }) : super(key: key);

  final TimePickerProperties properties;

  final TimePickerDecoration decoration;

  @override
  _ScrollTimePickerState createState() => _ScrollTimePickerState();
}

class _ScrollTimePickerState extends State<ScrollTimePicker> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(),

      /// Time Picker Indicator
      IgnorePointer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Theme.of(context).scaffoldBackgroundColor,
                      Theme.of(context).scaffoldBackgroundColor.withOpacity(0.7),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: widget.decoration.indicatorPadding,
              child: Container(
                height: widget.properties.itemExtent,
                decoration: widget.decoration.indicatorDecoration ??
                    BoxDecoration(
                      color: Colors.grey.withOpacity(0.15),
                      borderRadius: const BorderRadius.all(Radius.circular(4)),
                    ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Theme.of(context).scaffoldBackgroundColor.withOpacity(0.7),
                      Theme.of(context).scaffoldBackgroundColor,
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
