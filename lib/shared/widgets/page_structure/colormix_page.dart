import 'package:colormix/shared/widgets/page_structure/colormix_appbar.dart';
import 'package:flutter/material.dart';

class ColormixPage extends StatelessWidget {
  final Widget child;
  final Widget? bottomNavigationBar;
  final Color? backgroundColor;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;

  const ColormixPage({
    super.key,
    required this.child,
    this.bottomNavigationBar,
    this.backgroundColor,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: colormixAppBar(context),
      body: child,
      bottomNavigationBar: bottomNavigationBar,
      backgroundColor: backgroundColor,
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: floatingActionButtonLocation,
    );
  }
}
