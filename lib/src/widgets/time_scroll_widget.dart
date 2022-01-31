import 'package:flutter/material.dart';
import 'package:scroll_time_picker/src/models/time_picker_decoration.dart';
import 'package:scroll_time_picker/src/models/time_picker_properties.dart';

class DateScrollView extends StatelessWidget {
  const DateScrollView({
    Key? key,
    required this.controller,
    this.width = 70,
    required this.onChanged,
    required this.times,
    required this.properties,
    required this.decoration,
    required this.selectedItem,
    this.alignment = Alignment.center,
    this.padding = const EdgeInsets.all(0),
  }) : super(key: key);

  /// A controller for scroll views whose items have the same size.
  final FixedExtentScrollController controller;

  /// If non-null, requires the child to have exactly this Width.
  final double width;

  /// On optional listener that's called when the centered item changes.
  final ValueChanged<int> onChanged;

  /// This is a list of times.
  final List times;

  /// A set that allows you to specify properties related to ListWheelScrollView.
  final TimePickerProperties properties;

  final TimePickerDecoration decoration;

  /// It's a text sorting method.
  final Alignment alignment;

  /// The currently selected time.
  final String selectedItem;

  /// The amount of space that can be added to the hour or minute.
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: SizedBox(
        width: width,
        child: ListWheelScrollView.useDelegate(
            itemExtent: properties.itemExtent,
            diameterRatio: properties.diameterRatio,
            controller: controller,
            physics: const FixedExtentScrollPhysics(),
            perspective: properties.perspective,
            onSelectedItemChanged: onChanged,
            childDelegate: ListWheelChildLoopingListDelegate(
              children: List<Widget>.generate(
                times.length,
                (index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0),
                  child: Container(
                    alignment: alignment,
                    child: Text("${times[index]}", style: "${times[index]}" == selectedItem ? decoration.selectedTextStyle : decoration.textStyle),
                  ),
                ),
              ),
            )),
      ),
    );
  }
}
