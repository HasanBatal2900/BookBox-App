import 'package:book_box/features/book/presentation/views/widgets/book_details_widgets/details_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});
  static String route = "/bookDetailsView";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BookDetailsViewBody(),
    );
  }
}
