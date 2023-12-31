import 'package:colormix/generated/l10n.dart';
import 'package:colormix/shared/routes.dart';
import 'package:colormix/shared/theme/custom_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class ColormixApp extends StatelessWidget {
  const ColormixApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tixfy Catraca',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: ThemeData(
        fontFamily: 'CircularStd',
        primarySwatch: DefaultTheme.colors.tixSwatch,
        unselectedWidgetColor: DefaultTheme.colors.primary,
      ),
      initialRoute: AppRoutes.splash,
      routes: getRoutes(context),
    );
  }
}
