import 'package:book_box/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SubmitIconedButton extends StatelessWidget {
  const SubmitIconedButton(
      {super.key,
      required this.onPressed,
      this.height = 30,
      this.width = 100,
      this.border,
      this.title = "press Here",
      this.icon,
      this.backgroundColor,
      this.textStyle});
  final double height;
  final double width;
  final ShapeBorder? border;
  final String title;
  final IconData? icon;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      height: 30,
      minWidth: 100,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      color: Theme.of(context).colorScheme.primary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style:
                textStyle ?? Styles.textStyle16.copyWith(color: Colors.white),
          ),
          const Gap(10),
          Icon(icon ?? Icons.arrow_forward, color: Colors.white),
        ],
      ),
    );
  }
}
