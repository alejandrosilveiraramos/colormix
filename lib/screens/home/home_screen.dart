import 'package:colormix/screens/home/base_screen.dart';
import 'package:colormix/screens/home/components/card_color.dart';
import 'package:colormix/shared/mocks/color_data.dart';
import 'package:colormix/shared/models/color_data.dart';
import 'package:colormix/shared/widgets/page_structure/colormix_bottom_tab_bar.dart';
import 'package:colormix/shared/widgets/page_structure/colormix_page.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ColorData> colorDataList = ColorDataMock.getColorDataList();

    return ColormixPage(
      bottomNavigationBar: const ColormixBottomTabBar(),
      child: BaseScreen(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children: [
              Row(
                children: colorDataList.map((colorData) {
                  return CardColor(
                    colorBanner: colorData.color,
                    colorName: colorData.name,
                    colorCode: colorData.code,
                    colorDescription: colorData.description,
                    composition: colorData.composition,
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
