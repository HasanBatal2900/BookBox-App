import 'package:book_box/core/widgets/drawer/drawer.dart';
import 'package:book_box/core/widgets/tabs/bottom_navigation_bottom.dart';
import 'package:flutter/material.dart';

class ScaffoldWithNavBar extends StatelessWidget {
  const ScaffoldWithNavBar({
    required this.currentScreen,
    Key? key,
  }) : super(key: key);

  final Widget currentScreen;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      body: currentScreen,
      bottomNavigationBar: const HomeBottomNavigationBar(),
    );
  }
}
