import 'package:flutter/material.dart';

enum TabType {
  home(id: 0, icon: Icons.home),
  shop(id: 1, icon: Icons.shopping_bag_outlined),
  profile(id: 2, icon: Icons.person_outline);

  const TabType({required this.id, required this.icon});

  final int id;
  final IconData icon;
}
