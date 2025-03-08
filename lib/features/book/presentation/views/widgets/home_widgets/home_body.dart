import 'package:book_box/core/constants/padding.dart';
import 'package:book_box/core/constants/styles.dart';
import 'package:book_box/core/utils/image_app.dart';
import 'package:book_box/core/widgets/open_drawer_btn.dart';
import 'package:book_box/features/book/presentation/views/widgets/home_widgets/common_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

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
                  style: Styles.textStyle24,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    size: 24,
                  ),
                ),
              ],
            ),
          ),
        ),
        const CommonBooksListView(),
        SliverToBoxAdapter(
          child: Padding(
            padding: kSymmetricPadding,
            child: Text(
              "Featured Books",
              style: Styles.textStyle18,
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(left: 4, top: 10),
          sliver: SliverList.builder(
            itemBuilder: (context, index) => SizedBox(
              height: 170,
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
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width * .65,
                          child: Text(
                            "Harry Potter and the Goblet of fire",
                            style: Styles.textStyle24,
                            maxLines: 2,
                          ),
                        ),
                        const Gap(5),
                        Text(
                          "J.KRowling",
                          style: Styles.textStyle18,
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
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.sizeOf(context).width * .3,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  const Icon(
                                    FontAwesomeIcons.solidStar,
                                    color: Colors.amber,
                                    size: 18,
                                  )
                                      .animate(
                                        onComplete: (controller) =>
                                            controller.repeat(),
                                      )
                                      .shimmer(
                                          duration: const Duration(seconds: 2)),
                                  const Gap(4),
                                  Text(
                                    "4.8",
                                    style: Styles.textStyle16.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Gap(5),
                                  SizedBox(
                                    width:
                                        MediaQuery.sizeOf(context).width * .15,
                                    child: Text(
                                      "(2390)",
                                      overflow: TextOverflow.ellipsis,
                                      style: Styles.textStyle14.copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
