import 'package:book_box/core/helper/navigaton/nav2.0.dart';
import 'package:book_box/core/widgets/tabs/scaffold_with_bottom_nav_bar.dart';
import 'package:book_box/features/book/presentation/views/book_details_view.dart';
import 'package:book_box/features/book/presentation/views/favoriate_book_view.dart';
import 'package:book_box/features/book/presentation/views/home_book_view.dart';
import 'package:book_box/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:book_box/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

List<RouteBase> routerList = [
  GoRoute(
    path: "/",
    builder: (context, state) => const SplashView(),
  ),
  GoRoute(
    path: OnboardingView.route,
    pageBuilder: (context, state) => ScaleNavigation(
      screen: const OnboardingView(),
    ),
  ),
  ShellRoute(
    builder: (context, state, screen) =>
        ScaffoldWithNavBar(currentScreen: screen),
    routes: [
      GoRoute(
        path: HomeBookView.route,
        pageBuilder: (context, state) =>
            ScaleNavigation(screen: const HomeBookView()),
      ),
      GoRoute(
        path: FavoriateBookView.route,
        pageBuilder: (context, state) =>
            ScaleNavigation(screen: const FavoriateBookView()),
      ),
      GoRoute(
        path: BookDetailsView.route,
        pageBuilder: (context, state) => SlideToRightNavigation(
          screen: const BookDetailsView(),
          // add param here to pass it to the view
        ),
      )
    ],
  ),
];
