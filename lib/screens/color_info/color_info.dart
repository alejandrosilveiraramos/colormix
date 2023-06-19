import 'package:colormix/shared/theme/custom_theme.dart';
import 'package:flutter/material.dart';

class ColorInfo extends StatelessWidget {
  final Color infoColor;
  final String colorName;
  final String colorCode;
  final String colorDescription;

  const ColorInfo({
    Key? key,
    required this.infoColor,
    required this.colorName,
    required this.colorCode,
    required this.colorDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: DefaultTheme.colors.primary,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            DefaultTheme.borderRadius.medium,
          ),
          topRight: Radius.circular(
            DefaultTheme.borderRadius.medium,
          ),
        ),
      ),
      height: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: infoColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                  DefaultTheme.borderRadius.medium,
                ),
                topRight: Radius.circular(
                  DefaultTheme.borderRadius.medium,
                ),
              ),
            ),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * .1,
          ),
          DefaultTextStyle(
            style: TextStyle(
              fontSize: 14,
              color: DefaultTheme.colors.secondary,
              fontWeight: DefaultTheme.fontWeight.bold,
            ),
            child: Text(
              'Nome: $colorName',
            ),
          ),
          const SizedBox(height: 4),
          DefaultTextStyle(
            style: TextStyle(
              fontSize: 14,
              color: DefaultTheme.colors.medium,
            ),
            child: Text(
              'Código: $colorCode',
            ),
          ),
          const SizedBox(height: 4),
          DefaultTextStyle(
            style: TextStyle(
              fontSize: 14,
              color: DefaultTheme.colors.medium,
            ),
            child: Text(
              'Descrição: $colorDescription',
            ),
          ),
        ],
      ),
    );
  }
}
