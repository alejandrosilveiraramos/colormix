import 'package:flutter_flavor/flutter_flavor.dart';

class FlavorValues {
  final String baseUrl;
  FlavorValues({required this.baseUrl});
}

class Environment {
  static const _values = 'values';
  static const envDev = 'DEV';
  static const envProd = 'PROD';
  static FlavorValues get values {
    return FlavorConfig.instance.variables[_values];
  }

  static final Map<String, FlavorValues> dev = {
    _values: FlavorValues(
      baseUrl: 'http://localhost:DEVTESTE',
    ),
  };

  static final Map<String, FlavorValues> prod = {
    _values: FlavorValues(
      baseUrl: 'http://localhost:PRODTESTE',
    ),
  };
}
