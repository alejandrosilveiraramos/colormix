import 'package:colormix/shared/theme/custom_theme.dart';
import 'package:flutter/material.dart';

class CardColor extends StatelessWidget {
  final Color bannerColor;
  final String colorName;
  final String colorCode;

  const CardColor({
    Key? key,
    required this.bannerColor,
    required this.colorName,
    required this.colorCode,
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
                    color: bannerColor,
                    borderRadius: BorderRadius.only(
                      topLeft:
                          Radius.circular(DefaultTheme.borderRadius.medium),
                      topRight:
                          Radius.circular(DefaultTheme.borderRadius.medium),
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
                Container(
                  width: MediaQuery.of(context).size.width * .22,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.info_outlined),
                    color: DefaultTheme.colors.secondary,
                    iconSize: 40,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * .22,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.invert_colors),
                    color: DefaultTheme.colors.secondary,
                    iconSize: 40,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
