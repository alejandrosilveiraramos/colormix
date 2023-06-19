import 'package:colormix/shared/models/color_data.dart';
import 'package:flutter/material.dart';

class ColorDataMock {
  static List<ColorData> getColorDataList() {
    return [
      ColorData(
        color: Colors.amber,
        name: 'Yellow Amber',
        code: '322533',
        description: 'Lorem ipsum dolor sit amet, consectetur',
        composition: {
          "Yellow Accent": ColorAndPercentage(
            color: const Color(0xFFFFEE00),
            percentage: 40,
          ), // Custom color for Blue with 40% composition
          "Yellow Canary": ColorAndPercentage(
            color: const Color(0xFFFFB300),
            percentage: 60,
          ), // Custom color for Red with 60% composition
        },
      ),
      ColorData(
        color: Colors.blue,
        name: 'Pure Blue',
        code: '192876',
        description: 'Lorem ipsum dolor sit amet, consectetur',
        composition: {
          "Blue": ColorAndPercentage(
            color: const Color(0xFF0000FF),
            percentage: 100,
          ), // Blue color with 100% composition
        },
      ),
      ColorData(
        color: Colors.red,
        name: 'Pure Red',
        code: '456765',
        description: 'Lorem ipsum dolor sit amet, consectetur',
        composition: {
          "Red": ColorAndPercentage(
            color: const Color(0xFFFF4848),
            percentage: 100,
          ), // Red color with 100% composition
        },
      ),
      ColorData(
        color: Colors.black,
        name: 'Blackout',
        code: '542789',
        description: 'Lorem ipsum dolor sit amet, consectetur',
        composition: {
          "Black": ColorAndPercentage(
            color: const Color(0xFF000000),
            percentage: 100,
          ),
        }, // Black has no custom composition
      ),
    ];
  }
}
