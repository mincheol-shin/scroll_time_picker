
class TimePickerProperties {
  const TimePickerProperties({
    this.itemExtent = 30.0,
    this.diameterRatio = 3,
    this.perspective = 0.01,
  });

  /// Size of each child in the main axis
  final double itemExtent;

  /// {@macro flutter.rendering.wheelList.diameterRatio}
  final double diameterRatio;

  /// {@macro flutter.rendering.wheelList.perspective}
  final double perspective;
}
