// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// // import 'package:gym_app/core/theme/theme_cubit/theme_cubit.dart';

// class ChangeThemeButtonIcon extends StatefulWidget {
//   const ChangeThemeButtonIcon({super.key});

//   @override
//   State<ChangeThemeButtonIcon> createState() => _ChangeThemeButtonIconState();
// }

// class _ChangeThemeButtonIconState extends State<ChangeThemeButtonIcon> {
//   late bool isDark;
//   @override
//   void initState() {
//     // isDark = BlocProvider.of<ThemeCubit>(context).isDark;
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedSwitcher(
//       transitionBuilder: (child, animation) {
//         animation = CurvedAnimation(
//           curve: Curves.fastEaseInToSlowEaseOut,
//           parent: animation,
//         );

//         return ScaleTransition(
//           scale: animation,
//           alignment: Alignment.center,
//           child: child,
//         );
//       },
//       switchInCurve: Curves.bounceIn,
//       duration: const Duration(milliseconds: 800),
//       child: isDark
//           ? IconButton(
//               onPressed: () {
//                 BlocProvider.of<ThemeCubit>(context).changeTheme();
//                 setState(() {
//                   isDark = BlocProvider.of<ThemeCubit>(context).isDark;
//                 });
//               },
//               key: const ValueKey(1),
//               icon: const Icon(
//                 Icons.nightlight_rounded,
//                 color: Colors.white,
//                 size: 24,
//               ))
//           : IconButton(
//               key: const ValueKey(2),
//               onPressed: () {
//                 BlocProvider.of<ThemeCubit>(context).changeTheme();
//                 setState(() {
//                   isDark = BlocProvider.of<ThemeCubit>(context).isDark;
//                 });
//               },
//               icon: const Icon(
//                 Icons.sunny,
//                 color: Colors.white,
//                 size: 24,
//               ),
//             ),
//     );
//   }
// }
