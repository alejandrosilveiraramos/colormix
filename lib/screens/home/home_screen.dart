import 'package:colormix/screens/home/components/base_screen.dart';
import 'package:colormix/screens/home/components/card_color.dart';
import 'package:colormix/shared/widgets/page_structure/colormix_bottom_tab_bar.dart';
import 'package:colormix/shared/widgets/page_structure/colormix_page.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ColormixPage(
      bottomNavigationBar: const ColormixBottomTabBar(),
      child: BaseScreen(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: const [
            CardColor(
              bannerColor: Colors.amber,
              colorCode: '321123',
              colorName: 'Amber',
            ),
            CardColor(
              bannerColor: Colors.red,
              colorCode: '442123',
              colorName: 'Red',
            ),
            CardColor(
              bannerColor: Colors.blue,
              colorCode: '554332',
              colorName: 'Blue',
            ),
          ]),
        ),
      ),
    );
  }
}
