import 'package:book_box/core/constants/padding.dart';
import 'package:book_box/core/constants/styles.dart';
import 'package:book_box/core/widgets/open_drawer_btn.dart';
import 'package:book_box/features/book/presentation/views/widgets/home_widgets/common_books_list_view.dart';
import 'package:book_box/features/book/presentation/views/widgets/home_widgets/featured_book_sliver_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: kDefaultPadding,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const OpenDrawerButton(),
                Text(
                  "BookBox",
                  style: Styles.textStyle24.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    size: 24,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                ),
              ],
            ),
          ),
        ),
        const CommonBooksSliverListView(),
        SliverToBoxAdapter(
          child: Padding(
            padding: kSymmetricPadding,
            child: Text(
              "Featured Books",
              style: Styles.textStyle18
                  .copyWith(color: Theme.of(context).colorScheme.onBackground),
            ),
          ),
        ),
        const FeaturedBookSliverListView(),
      ],
    );
  }
}
