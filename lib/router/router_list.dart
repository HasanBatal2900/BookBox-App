import 'package:book_box/core/helper/navigaton/nav2.0.dart';
import 'package:book_box/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:book_box/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

List<GoRoute> routerList = [
  GoRoute(
    path: "/",
    builder: (context, state) => const SplashView(),
  ),
  GoRoute(
    path: OnboardingView.route,
    pageBuilder: (context, state) => ScaleNavigation(
      screen: const OnboardingView(),
    ),
  )
];
