import 'package:colormix/shared/models/color_data.dart';
import 'package:flutter/material.dart';

class ColorDataMock {
  static List<ColorData> getColorDataList() {
    return [
      ColorData(
        color: Colors.amber,
        name: 'Amber',
        code: '322533',
      ),
      ColorData(
        color: Colors.blue,
        name: 'Blue',
        code: '192876',
      ),
      ColorData(
        color: Colors.red,
        name: 'Red',
        code: '456765',
      ),
    ];
  }
}
