import 'package:flutter/material.dart';
import 'package:handy_ipduk/main_screen/tab_screen/tab/tab_type.dart';
import 'package:handy_ipduk/presentation/extenstions/color_extension.dart';

class TabBarTile extends StatelessWidget {
  const TabBarTile({
    Key? key,
    required this.tabController,
    required this.onTabTapped,
    required this.tabTypes,
  }) : super(key: key);

  final TabController tabController;
  final Function(int) onTabTapped;
  final List<TabType> tabTypes;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: const Color.fromARGB(255, 30, 30, 30),
      selectedItemColor: ColorExtension.accentColor,
      unselectedItemColor: Colors.black,
      currentIndex: tabController.index,
      onTap: onTabTapped,
      selectedFontSize: 0,
      unselectedFontSize: 0,
      iconSize: 24,
      selectedIconTheme: const IconThemeData(size: 24),
      unselectedIconTheme: const IconThemeData(size: 24),
      items: tabTypes.map((TabType type) {
        return BottomNavigationBarItem(
          icon: Icon(
            type.icon,
          ),
          label: '',
        );
      }).toList(),
    );
  }
}
