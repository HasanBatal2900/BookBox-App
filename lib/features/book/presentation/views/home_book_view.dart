import 'package:book_box/features/book/presentation/views/widgets/home_widgets/home_body.dart';
import 'package:flutter/material.dart';

class HomeBookView extends StatelessWidget {
  const HomeBookView({super.key});
  static const String route = "/homeView";
  @override
  Widget build(BuildContext context) {
    return const HomeViewBody();
  }
}
