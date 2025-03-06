import 'package:book_box/core/constants/padding.dart';
import 'package:book_box/features/book/presentation/views/widgets/home_widgets/home_search_section.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: kDefaultPadding,
      child: Column(
        children: [
           HomeSearchSection(),
           Gap(15),
        ],
      ),
    );
  }
}
