import 'package:book_box/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class RatebookSection extends StatelessWidget {
  const RatebookSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                onComplete: (controller) => controller.repeat(),
              )
              .shimmer(duration: const Duration(seconds: 2)),
          const Gap(4),
          Text(
            "4.8",
            style: Styles.textStyle16.copyWith(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onBackground),
          ),
          const Gap(5),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * .15,
            child: Text(
              "(2390)",
              overflow: TextOverflow.ellipsis,
              style: Styles.textStyle14.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
