import 'package:book_box/core/constants/borders.dart';
import 'package:book_box/core/constants/colors.dart';
import 'package:book_box/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeSearchSection extends StatelessWidget {
  const HomeSearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Discover",
              style: Styles.textStyle30,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_outlined, size: 35),
            ),
          ],
        ),
        const Gap(10),
        Row(
          children: [
            Expanded(
              flex: 7,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search for clothes...",
                  focusedBorder: CustomBorders.roundedFouceBorder,
                  border: CustomBorders.roundedBorder,
                  prefixIcon: const Icon(
                    Icons.search_rounded,
                    color: Colors.grey,
                  ),
                  suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.mic_rounded,
                        color: Colors.grey,
                      )),
                ),
              ),
            ),
            const Gap(5),
            SizedBox(
              width: 55,
              child: MaterialButton(
                height: 55,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7.0),
                ),
                minWidth: 55,
                color: ColorApp.kPrimaryColor,
                onPressed: () {},
                child: const Icon(
                  FontAwesomeIcons.gear,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
            const Gap(10),
          ],
        ),
      ],
    );
  }
}
