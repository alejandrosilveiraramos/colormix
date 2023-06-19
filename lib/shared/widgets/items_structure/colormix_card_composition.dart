import 'package:colormix/shared/theme/custom_theme.dart';
import 'package:flutter/material.dart';

class ColormixCardComposition extends StatelessWidget {
  final Color colorCardComposition;
  final String titleCardComposition;
  final int percentCardComposition;

  const ColormixCardComposition({
    Key? key,
    required this.colorCardComposition,
    required this.titleCardComposition,
    required this.percentCardComposition,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 35,
          height: 35,
          decoration: BoxDecoration(
            color: colorCardComposition,
            borderRadius: BorderRadius.all(
              Radius.circular(
                DefaultTheme.borderRadius.small,
              ),
            ),
          ),
        ),
        SizedBox(width: DefaultTheme.spacing.normal),
        DefaultTextStyle(
          style: TextStyle(
            fontSize: DefaultTheme.fontSize.normal,
            color: DefaultTheme.colors.medium,
          ),
          child: Text('$percentCardComposition%'),
        ),
        SizedBox(width: DefaultTheme.spacing.normal),
        DefaultTextStyle(
          style: TextStyle(
            fontSize: DefaultTheme.fontSize.normal,
            color: DefaultTheme.colors.medium,
          ),
          child: Text(titleCardComposition),
        ),
      ],
    );
  }
}
