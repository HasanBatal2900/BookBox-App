import 'package:book_box/core/constants/padding.dart';
import 'package:book_box/core/constants/styles.dart';
import 'package:book_box/features/book/presentation/views/widgets/book_details_widgets/book_details_column.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kDefaultPadding,
      child: Column(
        children: [
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
          const BookDetailsColumn(),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => Container(
                color: Colors.amber,
              ),
            ),
          )
        ],
      ),
    );
  }
}
