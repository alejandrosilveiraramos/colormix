import 'package:colormix/generated/l10n.dart';
import 'package:colormix/screens/home/components/button_card.dart';
import 'package:colormix/shared/models/color_data.dart';
import 'package:colormix/shared/theme/custom_theme.dart';
import 'package:colormix/shared/widgets/items_structure/colormix_card_composition.dart';
import 'package:flutter/material.dart';

class ColorInfo extends StatelessWidget {
  final Color infoColor;
  final String colorName;
  final String colorCode;
  final String colorDescription;
  final Map<String, ColorAndPercentage> composition;

  const ColorInfo({
    Key? key,
    required this.infoColor,
    required this.colorName,
    required this.colorCode,
    required this.colorDescription,
    required this.composition,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: Material(
              color: Colors.transparent,
              child: Container(
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.topRight,
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
                      height: MediaQuery.of(context).size.height *
                          DefaultTheme.size.mdqBanner,
                      child: SizedBox(
                        child: Padding(
                          padding: EdgeInsets.only(
                              right: DefaultTheme.spacing.xSmall),
                          child: ButtonCard(
                            btnWidth: MediaQuery.of(context).size.width *
                                DefaultTheme.size.mdqBanner,
                            iconSize: DefaultTheme.fontSize.mLarge,
                            icon: Icons.close_rounded,
                            clickAction: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: DefaultTheme.spacing.normal),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: DefaultTheme.spacing.normal),
                          DefaultTextStyle(
                            style: TextStyle(
                              fontSize: DefaultTheme.fontSize.mLarge,
                              color: DefaultTheme.colors.secondary,
                              fontWeight: DefaultTheme.fontWeight.bold,
                            ),
                            child: Text(
                              S.of(context).name(colorName),
                            ),
                          ),
                          SizedBox(height: DefaultTheme.spacing.xSmall),
                          DefaultTextStyle(
                            style: TextStyle(
                              fontSize: DefaultTheme.fontSize.mLarge,
                              color: DefaultTheme.colors.medium,
                            ),
                            child: Text(
                              S.of(context).code(colorCode),
                            ),
                          ),
                          SizedBox(height: DefaultTheme.spacing.xSmall),
                          DefaultTextStyle(
                            style: TextStyle(
                              fontSize: DefaultTheme.fontSize.mLarge,
                              color: DefaultTheme.colors.medium,
                            ),
                            child: Text(
                                S.of(context).description(colorDescription)),
                          ),
                          SizedBox(height: DefaultTheme.spacing.normal),
                          DefaultTextStyle(
                            style: TextStyle(
                              fontSize: DefaultTheme.fontSize.mLarge,
                              color: DefaultTheme.colors.secondary,
                            ),
                            child: Text(S.of(context).composition),
                          ),
                          SizedBox(height: DefaultTheme.spacing.xSmall),
                          Column(
                            children: composition.entries.map((entry) {
                              return Padding(
                                padding: EdgeInsets.only(
                                    top: DefaultTheme.spacing.mSmall),
                                child: ColormixCardComposition(
                                  colorCardComposition: entry.value.color,
                                  titleCardComposition: entry.key,
                                  percentCardComposition:
                                      entry.value.percentage,
                                ),
                              );
                            }).toList(),
                          ),
                          SizedBox(height: DefaultTheme.spacing.xllarge),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ButtonCard(
                                icon: Icons.invert_colors,
                                clickAction: () {},
                              ),
                              SizedBox(width: DefaultTheme.spacing.normal),
                              ButtonCard(
                                icon: Icons.edit,
                                clickAction: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
