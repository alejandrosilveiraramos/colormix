import 'package:colormix/screens/color_info/color_info.dart';
import 'package:colormix/screens/home/components/button_card.dart';
import 'package:colormix/shared/theme/custom_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardColor extends StatelessWidget {
  final Color colorBanner;
  final String colorName;
  final String colorCode;
  final String colorDescription;

  const CardColor({
    Key? key,
    required this.colorBanner,
    required this.colorName,
    required this.colorCode,
    required this.colorDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * .45,
            height: 220,
            decoration: BoxDecoration(
              color: DefaultTheme.colors.primary,
              borderRadius: BorderRadius.all(
                Radius.circular(DefaultTheme.borderRadius.medium),
              ),
            ),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.width * .15,
                  decoration: BoxDecoration(
                    color: colorBanner,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        DefaultTheme.borderRadius.medium,
                      ),
                      topRight: Radius.circular(
                        DefaultTheme.borderRadius.medium,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Flexible(
                  fit: FlexFit.loose,
                  child: Text(
                    colorName,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: DefaultTheme.colors.secondary,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  colorCode,
                  style: TextStyle(
                    fontSize: 14,
                    color: DefaultTheme.colors.medium,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * .45,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonCard(
                  icon: Icons.info_outlined,
                  clickAction: () {
                    modalColor(
                      context,
                      ColorInfo(
                        infoColor: colorBanner,
                        colorName: colorName,
                        colorCode: colorCode,
                        colorDescription: colorDescription,
                      ),
                    );
                  },
                ),
                ButtonCard(
                  icon: Icons.invert_colors,
                  clickAction: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void modalColor(BuildContext context, Widget child) {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.85,
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
          child: child,
        );
      },
    );
  }
}
