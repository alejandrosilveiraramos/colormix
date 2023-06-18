import 'package:colormix/shared/routes.dart';
import 'package:colormix/shared/theme/custom_theme.dart';
import 'package:flutter/material.dart';

AppBar colormixAppBar(BuildContext context) {
  return AppBar(
    leadingWidth: double.infinity,
    centerTitle: true,
    backgroundColor: DefaultTheme.colors.primary,
    leading: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            if (ModalRoute.of(context)!.settings.name != AppRoutes.home) {
              Navigator.of(context).pushNamedAndRemoveUntil(
                AppRoutes.home,
                (route) => false,
              );
            }
          },
          child: Padding(
            padding: EdgeInsets.only(bottom: DefaultTheme.spacing.small),
            child: Image.asset(DefaultTheme.assets.logo),
          ),
        ),
      ],
    ),
  );
}
