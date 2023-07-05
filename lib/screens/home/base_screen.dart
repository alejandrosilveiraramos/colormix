import 'package:colormix/shared/theme/custom_theme.dart';
import 'package:flutter/widgets.dart';

class BaseScreen extends StatelessWidget {
  final Widget child;
  const BaseScreen({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: DefaultTheme.colors.lightGrey,
      child: SingleChildScrollView(
        child: child,
      ),
    );
  }
}
