import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScaleNavigation extends CustomTransitionPage {
  final Widget screen;
  ScaleNavigation({required this.screen})
      : super(
            child: screen,
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

class SlideToLeftNavigation extends CustomTransitionPage {
  final Widget screen;
  SlideToLeftNavigation({required this.screen})
      : super(
          child: screen,
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
        );
}

class SlideToDownNavigation extends CustomTransitionPage {
  final Widget screen;
  SlideToDownNavigation({required this.screen})
      : super(
          child: screen,
          transitionDuration: const Duration(milliseconds: 1000),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            animation =
                CurvedAnimation(curve: Curves.fastOutSlowIn, parent: animation);

            return SlideTransition(
              position: Tween<Offset>(
                      begin: const Offset(0, -1), end: const Offset(0, 0))
                  .animate(animation),
              child: child,
            );
          },
        );
}

class SlideToUpNavigation extends CustomTransitionPage {
  final Widget screen;
  SlideToUpNavigation({required this.screen})
      : super(
          child: screen,
          transitionDuration: const Duration(milliseconds: 1000),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            animation =
                CurvedAnimation(curve: Curves.fastOutSlowIn, parent: animation);

            return SlideTransition(
              position: Tween<Offset>(
                      begin: const Offset(0, 1), end: const Offset(0, 0))
                  .animate(animation),
              child: child,
            );
          },
        );
}

class SlideToRightNavigation extends CustomTransitionPage {
  final Widget screen;
  SlideToRightNavigation({required this.screen})
      : super(
          child: screen,
          transitionDuration: const Duration(milliseconds: 1000),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            animation =
                CurvedAnimation(curve: Curves.fastOutSlowIn, parent: animation);

            return SlideTransition(
              position: Tween<Offset>(
                      begin: const Offset(-1, 0), end: const Offset(0, 0))
                  .animate(animation),
              child: child,
            );
          },
        );
}

class FadeNavigation extends CustomTransitionPage {
  final Widget screen;
  FadeNavigation({required this.screen})
      : super(
          child: screen,
          transitionDuration: const Duration(milliseconds: 400),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            animation =
                CurvedAnimation(curve: Curves.easeIn, parent: animation);

            return FadeTransition(
              opacity: Tween<double>(begin: 0.0, end: 1.0).animate(animation),
              child: child,
            );
          },
        );
}

class RotationNavigation extends CustomTransitionPage {
  final Widget screen;
  RotationNavigation({required this.screen})
      : super(
          child: screen,
          transitionDuration: const Duration(milliseconds: 1000),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            animation =
                CurvedAnimation(curve: Curves.easeOutCirc, parent: animation);

            return RotationTransition(
              alignment: Alignment.center,
              turns: animation,
              child: child,
            );
          },
        );
}
