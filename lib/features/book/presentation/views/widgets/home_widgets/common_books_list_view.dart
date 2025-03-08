import 'package:book_box/core/utils/image_app.dart';
import 'package:book_box/features/book/presentation/views/widgets/home_widgets/book_image.dart';
import 'package:flutter/material.dart';

class CommonBooksSliverListView extends StatelessWidget {
  const CommonBooksSliverListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(top: 5),
      sliver: SliverToBoxAdapter(
        child: SizedBox(
          height: 220,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) =>const Padding(
              padding:  EdgeInsets.only(right: 2),
              child: CustomBookImage(image: ImageApp.bookImage)
            ),
          ),
        ),
      ),
    );
  }
}
