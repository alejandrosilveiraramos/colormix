import 'package:colormix/shared/widgets/page_structure/colormix_bottom_tab_bar.dart';
import 'package:colormix/shared/widgets/page_structure/colormix_page.dart';
import 'package:flutter/material.dart';

class ColorInfo extends StatelessWidget {
  const ColorInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const ColormixPage(
      bottomNavigationBar: ColormixBottomTabBar(),
      child: Text('alo'),
    );
  }
}
