import 'package:colormix/generated/l10n.dart';
import 'package:colormix/shared/routes.dart';
import 'package:colormix/shared/theme/custom_theme.dart';
import 'package:flutter/material.dart';

class Keys {
  static const icon = 'icon';
  static const label = 'label';
  static const route = 'route';
}

class ColormixBottomTabBar extends StatefulWidget {
  const ColormixBottomTabBar({
    Key? key,
  }) : super(key: key);

  @override
  State<ColormixBottomTabBar> createState() => _ColormixBottomTabBarState();
}

class _ColormixBottomTabBarState extends State<ColormixBottomTabBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: DefaultTheme.colors.primary,
      unselectedItemColor: DefaultTheme.colors.medium,
      selectedItemColor: DefaultTheme.colors.secondary,
      selectedFontSize: DefaultTheme.fontSize.small,
      unselectedFontSize: DefaultTheme.fontSize.small,
      type: BottomNavigationBarType.fixed,
      onTap: (itemSelected) => _onItemTapped(context, itemSelected),
      currentIndex: _getCurrentIndex(context),
      items: getItems(context)
          .asMap()
          .map((index, item) {
            if (index == 1) {
              return MapEntry(
                index,
                BottomNavigationBarItem(
                  icon: Icon(
                    item[Keys.icon],
                    size: DefaultTheme.size.largeCircle,
                  ),
                  label: item[Keys.label],
                ),
              );
            } else {
              return MapEntry(
                index,
                BottomNavigationBarItem(
                  icon: Icon(item[Keys.icon]),
                  label: item[Keys.label],
                ),
              );
            }
          })
          .values
          .toList(),
    );
  }

  void _onItemTapped(BuildContext ctx, int index) {
    final item = getItems(ctx)[index];
    final currentRoute = ModalRoute.of(ctx)!.settings.name;

    if (currentRoute == item[Keys.route]) return;

    setState(() {
      Navigator.of(ctx).pushNamed(item[Keys.route]);
    });
  }

  int _getCurrentIndex(BuildContext context) {
    final currentRoute = ModalRoute.of(context)!.settings.name;
    final items = getItems(context);

    for (int i = 0; i < items.length; i++) {
      if (items[i][Keys.route] == currentRoute) {
        return i;
      }
    }

    return 0;
  }

  List<Map<String, dynamic>> getItems(BuildContext context) {
    return [
      {
        Keys.icon: Icons.home_rounded,
        Keys.label: S.of(context).home,
        Keys.route: AppRoutes.home,
      },
      {
        Keys.icon: Icons.add_circle,
        Keys.label: S.of(context).newColor,
        Keys.route: AppRoutes.colorForm,
      },
      {
        Keys.icon: Icons.settings_rounded,
        Keys.label: S.of(context).configuration,
        Keys.route: AppRoutes.home,
      },
    ];
  }
}
