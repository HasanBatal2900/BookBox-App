import 'package:book_box/core/constants/styles.dart';
import 'package:book_box/core/utils/image_app.dart';
import 'package:book_box/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4), () {
      context.go(OnboardingView.route);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              ImageApp.logo,
              height: 200.0,
              width: 200,
            ),
          ),
           SpinKitWaveSpinner(
            color: Theme.of(context).colorScheme.background,
            size: 50,
            waveColor:Theme.of(context).colorScheme.secondary,
            duration: const Duration(seconds: 3, milliseconds: 100),
          ),
          const Gap(10),
          Center(
            child: Text(
              "Loading...",
              style: Styles.textStyle20.copyWith(
                color: Theme.of(context).colorScheme.background,
              ),
            )
                .animate()
                .slideY(
                    duration: const Duration(seconds: 2),
                    begin: -2,
                    end: 0,
                    curve: Curves.bounceOut)
                .animate(
                    onComplete: (controller) => controller.repeat(),
                    delay: const Duration(milliseconds: 500))
                .fade(
                  duration: const Duration(seconds: 3),
                ),
          ),
        ],
      ),
    );
  }
}
