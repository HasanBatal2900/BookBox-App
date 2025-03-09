import 'package:book_box/core/constants/styles.dart';
import 'package:book_box/core/utils/image_app.dart';
import 'package:book_box/features/book/presentation/views/book_details_view.dart';
import 'package:book_box/features/book/presentation/views/widgets/book_details_widgets/rate_book_section.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class FeaturedBookCard extends StatelessWidget {
  const FeaturedBookCard({super.key});
// Here I need a bookModel Parameter
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: GestureDetector(
        onTap: () => GoRouter.of(context).push(BookDetailsView.route),
        child: Row(
          children: [
            SizedBox(
              child: AspectRatio(
                aspectRatio: 1 / 1.4,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(7.0),
                    child: Image.asset(
                      ImageApp.bookImage,
                    )),
              ),
            ),
            const Gap(10),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Theme.of(context).colorScheme.background,
                    width: MediaQuery.sizeOf(context).width * .6,
                    child: Text(
                      "Harry Potter and the Goblet of fire",
                      style: Styles.textStyle24.copyWith(
                        color: Theme.of(context).colorScheme.onBackground
                      ),
                      maxLines: 2,
                    ),
                  ),
                  const Gap(5),
                  Text(
                    "J.KRowling",
                    style: Styles.textStyle18.copyWith(
                      color: Theme.of(context).colorScheme.onBackground
                    ),
                  ),
                  const Gap(2),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * .25,
                        child: Text(
                          "19.99\$",
                          style: Styles.textStyle18.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.onBackground
                          ),
                        ),
                      ),
                      const RatebookSection(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
