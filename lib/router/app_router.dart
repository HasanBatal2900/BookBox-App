import 'package:book_box/router/router_list.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  AppRouter._();
  static GoRouter router = GoRouter(
    routes: routerList,
  );
}
