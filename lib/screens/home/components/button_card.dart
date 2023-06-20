import 'package:colormix/shared/theme/custom_theme.dart';
import 'package:flutter/material.dart';

class ButtonCard extends StatefulWidget {
  final double? btnWidth;
  final double? iconSize;
  final Function()? clickAction;
  final IconData icon;
  final bool disabled;

  const ButtonCard({
    Key? key,
    this.btnWidth,
    this.iconSize,
    required this.icon,
    required this.clickAction,
    this.disabled = false,
  }) : super(key: key);

  @override
  State<ButtonCard> createState() => _ButtonCardState();
}

class _ButtonCardState extends State<ButtonCard> {
  @override
  Widget build(BuildContext context) {
    const double defaultBtnWidth = 0.22;
    const double defaultIconSize = 50;

    return Container(
      width: widget.btnWidth ??
          MediaQuery.of(context).size.width * defaultBtnWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          DefaultTheme.borderRadius.medium,
        ),
      ),
      child: ElevatedButton(
        onPressed: widget.disabled ? null : widget.clickAction,
        style: ElevatedButton.styleFrom(
          backgroundColor:
              widget.disabled ? Colors.grey : DefaultTheme.colors.harmony,
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(DefaultTheme.borderRadius.medium),
          ),
        ),
        child: Icon(
          widget.icon,
          color: DefaultTheme.colors.secondary,
          size: widget.iconSize ?? defaultIconSize,
        ),
      ),
    );
  }
}
