import 'dart:ui';

class ColorData {
  Color color;
  String name;
  String code;
  String description;
  Map<String, ColorAndPercentage> composition;

  ColorData({
    required this.color,
    required this.name,
    required this.code,
    required this.description,
    required this.composition,
  });
}

class ColorAndPercentage {
  Color color;
  int percentage;

  ColorAndPercentage({required this.color, required this.percentage});
}
