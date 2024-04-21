import 'package:flutter/material.dart';
import 'package:handy_ipduk/main_screen/tab_screen/tab/tab_bar_tile.dart';
import 'package:handy_ipduk/main_screen/tab_screen/tab/tab_type.dart';
import 'package:handy_ipduk/presentation/main_views/views/home_view.dart';
import 'package:handy_ipduk/presentation/main_views/views/profile_view.dart';
import 'package:handy_ipduk/presentation/main_views/views/shop_view.dart';

class MainTabScreenView extends StatefulWidget {
  const MainTabScreenView({super.key});

  @override
  State<MainTabScreenView> createState() => _MainTabScreenViewState();
}

class _MainTabScreenViewState extends State<MainTabScreenView>
    with SingleTickerProviderStateMixin {
  static const List<TabType> tabTypes = <TabType>[
    TabType.home,
    TabType.shop,
    TabType.profile,
  ];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabTypes.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _onTabTapped(int index) {
    setState(() {
      _tabController.index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: TabBarView(
          controller: _tabController,
          physics: const NeverScrollableScrollPhysics(), // 옆으로 넘기는 스크롤 제한
          children: const [
            HomeView(),
            ShopView(),
            ProfileView(),
          ],
        ),
        bottomNavigationBar: TabBarTile(
          tabController: _tabController,
          onTabTapped: _onTabTapped,
          tabTypes: tabTypes,
        ),
      ),
    );
  }
}
