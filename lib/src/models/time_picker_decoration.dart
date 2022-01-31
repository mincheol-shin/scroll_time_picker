import 'package:flutter/material.dart';

class TimePickerDecoration {
  const TimePickerDecoration({
    this.selectedTextStyle = const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
    this.textStyle = const TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
    this.indicatorDecoration,
    this.indicatorPadding = const EdgeInsets.symmetric(horizontal: 12),
  });

  /// An immutable style describing how to format and paint text.
  final TextStyle textStyle;

  /// An invariant style that specifies the selected text format and explains how to draw it.
  final TextStyle selectedTextStyle;

  /// An immutable description of how to paint a time picker indicator.
  final BoxDecoration? indicatorDecoration;

  final EdgeInsets indicatorPadding;
}
