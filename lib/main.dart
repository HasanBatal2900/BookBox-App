import 'package:book_box/router/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BookBoxApp());
}

class BookBoxApp extends StatelessWidget {
  const BookBoxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}
