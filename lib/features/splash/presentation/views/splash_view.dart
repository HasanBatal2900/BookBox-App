import 'package:book_box/core/constants/colors.dart';
import 'package:book_box/features/splash/presentation/views/widgets/splash_body.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorApp.kPrimaryColor,
      body: SplashViewBody(),
    );
  }
}
