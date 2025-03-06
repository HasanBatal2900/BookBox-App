import 'package:book_box/core/constants/colors.dart';
import 'package:book_box/core/constants/styles.dart';
import 'package:book_box/features/book/presentation/views/favoriate_book_view.dart';
import 'package:book_box/features/book/presentation/views/home_book_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class HomeBottomNavigationBar extends StatefulWidget {
  const HomeBottomNavigationBar({super.key});

  @override
  State<HomeBottomNavigationBar> createState() =>
      _HomeBottomNavigationBarState();
}

class _HomeBottomNavigationBarState extends State<HomeBottomNavigationBar> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(color: Colors.black, blurRadius: 1, offset: Offset(1, 0)),
        ],
      ),
      child: BottomNavigationBar(
        unselectedLabelStyle: Styles.textStyle12,
        selectedLabelStyle: Styles.textStyle12,
        fixedColor: ColorApp.kPrimaryColor,
        landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
        elevation: 6.0,
        iconSize: 24,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        currentIndex: _calculateSelectedIndex(context),
        onTap: (value) => onPressed(value),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: "Home",
            activeIcon: Icon(
              Icons.home,
              color: ColorApp.kPrimaryColor,
            ),
          ),
          BottomNavigationBarItem(
              activeIcon: Icon(
                FontAwesomeIcons.solidHeart,
                color: ColorApp.kPrimaryColor,
              ),
              icon: Icon(
                FontAwesomeIcons.solidHeart,
                color: Colors.grey,
              ),
              label: "Favoriate"),
        ],
      ),
    );
  }

  void onPressed(int index) {
    switch (index) {
      case 0:
        GoRouter.of(context).go(HomeBookView.route);
        break;
      case 1:
        GoRouter.of(context).go(FavoriateBookView.route);
        break;
    }
  }

  int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.path;
    if (location.startsWith(HomeBookView.route)) {
      return 0;
    }
    if (location.startsWith(FavoriateBookView.route)) {
      return 1;
    }
    return 0;
  }
}
