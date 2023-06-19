import 'package:colormix/screens/color_info/color_info.dart';
import 'package:colormix/screens/home/components/button_card.dart';
import 'package:colormix/shared/models/color_data.dart';
import 'package:colormix/shared/theme/custom_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardColor extends StatelessWidget {
  final Color colorBanner;
  final String colorName;
  final String colorCode;
  final String colorDescription;
  final Map<String, ColorAndPercentage> composition;

  const CardColor({
    Key? key,
    required this.colorBanner,
    required this.colorName,
    required this.colorCode,
    required this.colorDescription,
    required this.composition,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(DefaultTheme.spacing.small),
      child: Column(
        children: [
          Container(
            width:
                MediaQuery.of(context).size.width * DefaultTheme.size.mdqCard,
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
                  height: MediaQuery.of(context).size.width *
                      DefaultTheme.size.mdqBanner,
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
                SizedBox(height: DefaultTheme.spacing.mSmall),
                Flexible(
                  fit: FlexFit.loose,
                  child: Text(
                    colorName,
                    style: TextStyle(
                      fontSize: DefaultTheme.fontSize.mLarge,
                      fontWeight: FontWeight.bold,
                      color: DefaultTheme.colors.secondary,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Text(
                  colorCode,
                  style: TextStyle(
                    fontSize: DefaultTheme.fontSize.normal,
                    color: DefaultTheme.colors.medium,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: DefaultTheme.spacing.xSmall),
          SizedBox(
            width:
                MediaQuery.of(context).size.width * DefaultTheme.size.mdqCard,
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
                        composition: composition,
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
          height:
              MediaQuery.of(context).size.height * DefaultTheme.size.mdqModal,
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
