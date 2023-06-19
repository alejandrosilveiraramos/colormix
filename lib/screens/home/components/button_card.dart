import 'package:colormix/shared/theme/custom_theme.dart';
import 'package:flutter/material.dart';

class ButtonCard extends StatelessWidget {
  final Function() clickAction;
  final IconData icon;

  const ButtonCard({
    Key? key,
    required this.icon,
    required this.clickAction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .22,
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
          size: 50,
        ),
      ),
    );
  }
}
