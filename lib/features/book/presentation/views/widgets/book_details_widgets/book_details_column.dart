import 'package:book_box/core/constants/colors.dart';
import 'package:book_box/core/constants/styles.dart';
import 'package:book_box/core/utils/image_app.dart';
import 'package:book_box/features/book/presentation/views/widgets/book_details_widgets/rate_book_section.dart';
import 'package:book_box/features/book/presentation/views/widgets/home_widgets/book_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BookDetailsColumn extends StatelessWidget {
  const BookDetailsColumn({super.key});
// BookModel paramter
  @override
  Widget build(BuildContext context) {
    return Column(
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
        const Gap(10),
        Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  minimumSize: const Size(300, 45),
                  backgroundColor: Colors.grey.shade700,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(7.0),
                      bottomLeft: Radius.circular(7.0),
                    ),
                  ),
                ),
                child: Text(
                  "19.99\$",
                  style: Styles.textStyle18.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const Gap(2),
            Expanded(
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  minimumSize: const Size(300, 45),
                  backgroundColor: ColorApp.kPrimaryColor,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(7.0),
                      bottomRight: Radius.circular(7.0),
                    ),
                  ),
                ),
                child: Text(
                  "free preview",
                  style: Styles.textStyle18.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
        const Gap(5),
        Align(
          alignment: Alignment.topLeft, // is Arabic Aligement.topRight,
          child: Text(
            "You may also like",
            style: Styles.textStyle16,
          ),
        ),
      ],
    );
  }
}
