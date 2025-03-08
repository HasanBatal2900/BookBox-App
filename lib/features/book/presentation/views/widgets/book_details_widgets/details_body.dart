import 'package:book_box/core/constants/padding.dart';
import 'package:book_box/core/constants/styles.dart';
import 'package:book_box/core/utils/image_app.dart';
import 'package:book_box/features/book/presentation/views/widgets/book_details_widgets/rate_book_section.dart';
import 'package:book_box/features/book/presentation/views/widgets/home_widgets/book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: kDefaultPadding,
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  GoRouter.of(context).pop();
                },
                icon: const Icon(
                  Icons.close_rounded,
                  size: 26,
                ),
              ),
              Text(
                "Details Book",
                style: Styles.textStyle24,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_rounded,
                  size: 26,
                ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 350,
                child: CustomBookImage(
                  image: ImageApp.bookImage,
                ),
              ),
              Text(
                "The Jungle Book",
                style: Styles.textStyle24.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Rudyard Killing",
                style: Styles.textStyle20.copyWith(
                  color: Colors.grey.shade800,
                ),
              ),
              const RatebookSection(),
            ],
          ),
        ]));
  }
}
