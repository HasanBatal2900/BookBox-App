import 'package:flutter/material.dart';

class ScaleNavigation extends PageRouteBuilder {
  final Widget screen;
  ScaleNavigation({required this.screen})
      : super(
            pageBuilder: (context, animation, secondaryAnimation) {
              return screen;
            },
            transitionDuration: const Duration(milliseconds: 400),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              animation = CurvedAnimation(
                parent: animation,
                curve: Curves.fastEaseInToSlowEaseOut,
              );
              return ScaleTransition(
                scale: animation,
                child: child,
              );
            });
}

class SlideNavigation extends PageRouteBuilder {
  final Widget screen;
  SlideNavigation({required this.screen})
      : super(
          transitionDuration: const Duration(milliseconds: 1000),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            animation =
                CurvedAnimation(curve: Curves.fastOutSlowIn, parent: animation);

            return SlideTransition(
              position: Tween<Offset>(
                      begin: const Offset(1, 0), end: const Offset(0, 0))
                  .animate(animation),
              child: child,
            );
          },
          pageBuilder: (context, animation, secondaryAnimation) {
            return screen;
          },
        );
}
