import 'package:book_box/features/book/presentation/views/widgets/home_widgets/featured_book_card.dart';
import 'package:flutter/material.dart';

class FeaturedBookSliverListView extends StatelessWidget {
  const FeaturedBookSliverListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(left: 4, top: 10),
      sliver: SliverList.builder(
        itemBuilder: (context, index) => const FeaturedBookCard(),
      ),
    );
  }
}
