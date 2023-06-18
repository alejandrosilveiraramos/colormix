import 'package:colormix/colormix_app.dart';
import 'package:colormix/environment/environment.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  FlavorConfig(
    name: Environment.envProd,
    variables: Environment.prod,
  );

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const ColormixApp());
}
