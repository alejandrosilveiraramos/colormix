import 'package:flutter/material.dart';

class DefaultTheme {
  static CustomSpacing get spacing => CustomSpacing.instance;
  static CustomFontSize get fontSize => CustomFontSize.instance;
  static CustomBorderRadius get borderRadius => CustomBorderRadius.instance;
  static CustomAssetsPaths get assets => CustomAssetsPaths.instance;
  static CustomColors get colors => CustomColors.instance;
  static CustomFontWeight get fontWeight => CustomFontWeight.instance;
  static CustomElevation get elevation => CustomElevation.instance;
  static CustomSizes get size => CustomSizes.instance;
  static CustomAnimationTime get animationTime => CustomAnimationTime.instance;
}

class CustomSizes {
  CustomSizes._privateConstructor();
  static final CustomSizes instance = CustomSizes._privateConstructor();

  double get formItemMinHeight => 44;
  double get buttonWithoutIcon => 51;
  double get formItemMaxHeight => 70;
  double get smallCircle => 24;
  double get smallIcon => 36;
  double get largeCircle => 40;
  double get square => 100;
  double get largeImageSquare => 148;
}

class CustomElevation {
  CustomElevation._privateConstructor();
  static final CustomElevation instance = CustomElevation._privateConstructor();

  double get none => 0;
  double get small => 4;
  double get normal => 8;
}

class CustomSpacing {
  CustomSpacing._privateConstructor();
  static final CustomSpacing instance = CustomSpacing._privateConstructor();

  double get none => 0;
  double get xlSmall => 2;
  double get xSmall => 4;
  double get mSmall => 8;
  double get small => 10;
  double get normal => 12;
  double get large => 16;
  double get xlarge => 24;
  double get xxlarge => 32;
  double get xllarge => 50;
}

class CustomFontSize {
  CustomFontSize._privateConstructor();
  static final CustomFontSize instance = CustomFontSize._privateConstructor();

  double get xSmall => 10;
  double get small => 12;
  double get normal => 14;
  double get large => 16;
  double get mLarge => 18;
  double get title => 20;
}

class CustomFontWeight {
  CustomFontWeight._privateConstructor();
  static final CustomFontWeight instance =
      CustomFontWeight._privateConstructor();

  FontWeight get medium => FontWeight.w500;
  FontWeight get normal => FontWeight.normal;
  FontWeight get bold => FontWeight.bold;
  FontWeight get thin => FontWeight.w100;
}

class CustomBorderRadius {
  CustomBorderRadius._privateConstructor();
  static final CustomBorderRadius instance =
      CustomBorderRadius._privateConstructor();

  double get none => 0;
  double get small => 4;
  double get medium => 8;
  double get rounded => 999;
}

class CustomAnimationTime {
  CustomAnimationTime._privateConstructor();
  static final CustomAnimationTime instance =
      CustomAnimationTime._privateConstructor();

  int get fast => 300;
  int get normal => 500;
  int get slow => 750;
}

class CustomAssetsPaths {
  CustomAssetsPaths._privateConstructor();
  static final CustomAssetsPaths instance =
      CustomAssetsPaths._privateConstructor();

  String get logo => 'assets/images/cmLogo.png';
  String get splash => 'assets/images/splash.png';
}

class CustomColors {
  CustomColors._privateConstructor();
  static final CustomColors instance = CustomColors._privateConstructor();

  Color get primary => const Color(0xFFF5F5F5);
  Color get secondary => const Color(0xFF000033);

  Color get light => const Color(0xFFF5F5F5);
  Color get lightGrey => const Color(0xFFCCCCCC);
  Color get medium => const Color(0xFF999999);
  Color get darkGrey => const Color(0xFF666666);
  Color get dark => const Color(0xFF323F38);

  Color get sucessfully => const Color(0xFF00FF00);
  Color get harmony => const Color(0xFF208FFF);
  Color get alert => const Color(0xFFFFFF00);
  Color get warning => const Color(0xFFFF0000);

  MaterialColor get tixSwatch => MaterialColor(
        primary.value,
        <int, Color>{
          50: light,
          100: light,
          200: light,
          300: medium,
          400: medium,
          500: primary,
          600: primary,
          700: primary,
          800: dark,
          900: dark,
        },
      );
}
