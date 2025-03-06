import 'package:book_box/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BookBoxApp());
}

class BookBoxApp extends StatelessWidget {
  const BookBoxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      home: SplashView(),
    );
  }
}
