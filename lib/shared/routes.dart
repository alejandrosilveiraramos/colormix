import 'package:colormix/screens/color_form/color_form.dart';
import 'package:colormix/screens/home/home_screen.dart';
import 'package:colormix/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String splash = '/';
  static const String home = '/home';
  static const String colorForm = '/color-form';
}

Map<String, WidgetBuilder> getRoutes(BuildContext context) {
  return {
    AppRoutes.splash: (context) => const SplashScreen(),
    AppRoutes.home: (context) => const HomeScreen(),
    AppRoutes.colorForm: (context) => const ColorForm(),
  };
}
