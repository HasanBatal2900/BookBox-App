
// import 'package:book_box/core/constants/colors.dart';
// import 'package:book_box/core/constants/styles.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:go_router/go_router.dart';

// class HomeBottomNavigationBar extends StatefulWidget {
//   const HomeBottomNavigationBar({super.key});

//   @override
//   State<HomeBottomNavigationBar> createState() =>
//       _HomeBottomNavigationBarState();
// }

// class _HomeBottomNavigationBarState extends State<HomeBottomNavigationBar> {
//   int index = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: const BoxDecoration(
//         boxShadow: [
//           BoxShadow(color: Colors.black, blurRadius: 1, offset: Offset(1, 0)),
//         ],
//       ),
//       child: BottomNavigationBar(
//           unselectedLabelStyle: Styles.textStyle12,
//           selectedLabelStyle: Styles.textStyle12,
//           fixedColor: ColorApp.kPrimaryColor,
//           landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
//           elevation: 6.0,
//           iconSize: 24,
//           showUnselectedLabels: true,
//           type: BottomNavigationBarType.fixed,
//           showSelectedLabels: true,
//           currentIndex: _calculateSelectedIndex(context),
//           onTap: (value) => onPressed(value),
//           items: const [
//             BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.home,
//                 color: Colors.grey,
//               ),
//               label: "Home",
//               activeIcon: Icon(
//                 Icons.home,
//                 color: ColorApp.kPrimaryColor,
//               ),
//             ),
//             BottomNavigationBarItem(
//               backgroundColor: Colors.black,
//               icon: Icon(
//                 Icons.search,
//                 color: Colors.grey,
//               ),
//               label: "Search",
//               activeIcon: Icon(
//                 Icons.search,
//                 color: ColorApp.kPrimaryColor,
//               ),
//             ),
//             BottomNavigationBarItem(
//                 activeIcon: Icon(
//                   FontAwesomeIcons.solidHeart,
//                   color: ColorApp.kPrimaryColor,
//                 ),
//                 icon: Icon(
//                   FontAwesomeIcons.solidHeart,
//                   color: Colors.grey,
//                 ),
//                 label: "Saved"),
//             BottomNavigationBarItem(
//                 activeIcon: Icon(
//                   Icons.shopping_cart,
//                   color: ColorApp.kPrimaryColor,
//                 ),
//                 backgroundColor: Colors.black,
//                 icon: Icon(
//                   Icons.shopping_cart,
//                   color: Colors.grey,
//                 ),
//                 label: "Cart"),
//             BottomNavigationBarItem(
//                 backgroundColor: Colors.black,
//                 activeIcon: Icon(
//                   Icons.person_pin_circle_rounded,
//                   color: ColorApp.kPrimaryColor,
//                 ),
//                 icon: Icon(
//                   Icons.person_pin_circle_rounded,
//                   color: Colors.grey,
//                 ),
//                 label: "Account"),
//           ]),
//     );
//   }

//   void onPressed(int index) {
//     switch (index) {
//       case 0:
//         GoRouter.of(context).go(HomeView.route);
//         break;
//       case 1:
//         GoRouter.of(context).go(SearchView.route);
//         break;
//       case 2:
//         GoRouter.of(context).go(FavoriateView.route);
//         break;
//       case 3:
//         GoRouter.of(context).go(CartView.route);
//         break;
//       case 4:
//         GoRouter.of(context).go(ProfileView.route);
//         break;
//     }
//   }

//   int _calculateSelectedIndex(BuildContext context) {
//     final String location = GoRouterState.of(context).uri.path;
//     if (location.startsWith(HomeView.route)) {
//       return 0;
//     }
//     if (location.startsWith(SearchView.route)) {
//       return 1;
//     }
//     if (location.startsWith(FavoriateView.route)) {
//       return 2;
//     }
//     if (location.startsWith(CartView.route)) {
//       return 3;
//     }
//     if (location.startsWith(ProfileView.route)) {
//       return 4;
//     }
//     return 0;
//   }
// }
