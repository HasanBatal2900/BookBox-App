import 'package:book_box/core/constants/padding.dart';
import 'package:book_box/core/constants/styles.dart';
import 'package:book_box/core/theme/theme_cubit/theme_cubit.dart';
import 'package:book_box/core/widgets/drawer/change_theme_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = BlocProvider.of<ThemeCubit>(context).isDark;
    return Drawer(
      width: ScreenUtil().screenWidth * .85,
      backgroundColor: Theme.of(context).colorScheme.background,
      elevation: 6.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
        ),
      ),
      child: Container(
        color: isDark
            ? Theme.of(context).colorScheme.background
            : Theme.of(context).colorScheme.primary,
        child: SingleChildScrollView(
          child: Padding(
            padding: kDefaultPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                const Align(
                  alignment: Alignment.topRight,
                  child: ChangeThemeButtonIcon(),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Settings",
                      style: Styles.textStyle18.copyWith(
                        color: isDark
                            ? Theme.of(context).colorScheme.primary
                            : Theme.of(context).colorScheme.background,
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
