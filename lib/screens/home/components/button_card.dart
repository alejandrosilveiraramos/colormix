import 'package:colormix/shared/theme/custom_theme.dart';
import 'package:flutter/material.dart';

class ButtonCard extends StatelessWidget {
  final double? btnWidth;
  final double? iconSize;
  final Function() clickAction;
  final IconData icon;

  const ButtonCard({
    Key? key,
    this.btnWidth,
    this.iconSize,
    required this.icon,
    required this.clickAction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double defaultBtnWidth = 0.22;
    const double defaultIconSize = 50;

    return Container(
      width: btnWidth ?? MediaQuery.of(context).size.width * defaultBtnWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          DefaultTheme.borderRadius.medium,
        ),
      ),
      child: ElevatedButton(
        onPressed: clickAction,
        style: ElevatedButton.styleFrom(
          backgroundColor: DefaultTheme.colors.primary,
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(DefaultTheme.borderRadius.medium),
          ),
        ),
        child: Icon(
          icon,
          color: DefaultTheme.colors.secondary,
          size: iconSize ?? defaultIconSize,
        ),
      ),
    );
  }
}
