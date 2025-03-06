import 'package:book_box/features/book/presentation/views/widgets/favoriate_widgets/favoriate_body.dart';
import 'package:flutter/material.dart';

class FavoriateBookView extends StatelessWidget {
  const FavoriateBookView({super.key});
  static const String route = "/favoriateBooks";
  @override
  Widget build(BuildContext context) {
    return const FavoriateBookViewBody();
  }
}
