import 'package:book_box/core/constants/styles.dart';
import 'package:book_box/core/theme/theme_cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class DrawerBtnsColumn extends StatelessWidget {
  const DrawerBtnsColumn({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = BlocProvider.of<ThemeCubit>(context).isDark;
    return Column(
      children: [
        SizedBox(
          width: ScreenUtil().setWidth(300),
          child: TextButton.icon(
              icon: Icon(
                Icons.settings,
                color: isDark
                    ? Theme.of(context).colorScheme.onBackground
                    : Theme.of(context).colorScheme.background,
              ),
              onPressed: () {},
              style: TextButton.styleFrom(
                alignment: Alignment.topLeft,

                // if arabic should be changed,
              ),
              label: Text(
                "Settings",
                style: Styles.textStyle18.copyWith(
                  color: isDark
                      ? Theme.of(context).colorScheme.onBackground
                      : Theme.of(context).colorScheme.background,
                ),
              )),
        ),
        Gap(5.sp),
        SizedBox(
          width: ScreenUtil().screenWidth * .8,
          child: TextButton.icon(
              style: TextButton.styleFrom(
                alignment: Alignment.topLeft,

                // if arabic should be changed,
              ),
              icon: Icon(
                Icons.language_rounded,
                color: isDark
                    ? Theme.of(context).colorScheme.onBackground
                    : Theme.of(context).colorScheme.background,
              ),
              onPressed: () {},
              label: Text(
                "languages",
                style: Styles.textStyle18.copyWith(
                  color: isDark
                      ? Theme.of(context).colorScheme.onBackground
                      : Theme.of(context).colorScheme.background,
                ),
              )),
        ),
        Gap(5.sp),
        SizedBox(
          width: ScreenUtil().setWidth(300),
          child: TextButton.icon(
              icon: Icon(
                Icons.favorite,
                color: isDark
                    ? Theme.of(context).colorScheme.onBackground
                    : Theme.of(context).colorScheme.background,
              ),
              onPressed: () {},
              style: TextButton.styleFrom(
                alignment: Alignment.topLeft,

                // if arabic should be changed,
              ),
              label: Text(
                "Favoriate",
                style: Styles.textStyle18.copyWith(
                  color: isDark
                      ? Theme.of(context).colorScheme.onBackground
                      : Theme.of(context).colorScheme.background,
                ),
              )),
        ),
      ],
    );
  }
}
