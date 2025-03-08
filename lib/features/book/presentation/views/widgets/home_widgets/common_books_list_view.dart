import 'package:book_box/core/utils/image_app.dart';
import 'package:flutter/material.dart';

class CommonBooksListView extends StatelessWidget {
  const CommonBooksListView({super.key});

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
            itemBuilder: (context, index) => Padding(
              padding:const EdgeInsets.only(right: 2),
              child: AspectRatio(
                aspectRatio: 1.5 / 2.2,
                child: GestureDetector(
                  onTap: () {},
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      ImageApp.bookImage,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
