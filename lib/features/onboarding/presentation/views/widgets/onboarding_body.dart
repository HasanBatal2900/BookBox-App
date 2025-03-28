import 'package:book_box/core/constants/padding.dart';
import 'package:book_box/core/constants/strings.dart';
import 'package:book_box/core/constants/styles.dart';
import 'package:book_box/core/utils/image_app.dart';
import 'package:book_box/core/widgets/submit_icon_btn.dart';
import 'package:book_box/features/book/presentation/views/home_book_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
            height: 100,
            left: 30,
            top: MediaQuery.sizeOf(context).height * .32,
            child: Transform.rotate(
              angle: -90,
              child: Transform.scale(
                scale: 4.2,
                alignment: Alignment.center,
                child: Image.asset(
                  ImageApp.wavyLines,
                  color: Theme.of(context).colorScheme.primary,
                )
                    .animate()
                    .slideY(
                      begin: 1,
                      end: 0,
                      curve: Curves.fastEaseInToSlowEaseOut,
                      duration: const Duration(
                        milliseconds: 700,
                      ),
                    )
                    .animate(
                      delay: const Duration(milliseconds: 1500),
                      onComplete: (controller) => controller.repeat(),
                    )
                    .shimmer(
                      duration: const Duration(milliseconds: 3200),
                    ),
              ),
            )),
        Positioned(
          top: 0,
          left: 0,
          child: Padding(
            padding: kDefaultPadding,
            child: Text(
              StringConstants.kOnboardingMessage,
              style: Styles.textStyle36.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
          )
              .animate()
              .slide(
                  delay: const Duration(milliseconds: 800),
                  begin: const Offset(0, -1),
                  end: const Offset(0, 0))
              .animate()
              .fade(duration: const Duration(milliseconds: 1000)),
        ),
        Positioned(
          right: -50,
          bottom: -60,
          child: Transform.scale(
            alignment: Alignment.center,
            scale: 1.8,
            child: Image.asset(
              ImageApp.onBoarding,
              height: 500.0,
            ),
          ).animate().scale(
              duration: const Duration(milliseconds: 800),
              curve: Curves.fastOutSlowIn),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Container(
            height: 80,
            width: MediaQuery.sizeOf(context).width,
            color: Theme.of(context).colorScheme.background,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SubmitIconedButton(
                  title: "Get Started",
                  onPressed: () {
                    GoRouter.of(context).go(HomeBookView.route);
                  }),
            ),
          ),
        ),
      ],
    );
  }
}
