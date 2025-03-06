import 'package:book_box/core/constants/colors.dart';
import 'package:book_box/core/constants/styles.dart';
import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton(
      {super.key,
      required this.onPressed,
      required this.title,
      this.border,
      this.height = 60});
  final String title;
  final void Function() onPressed;
  final double height;
    final BorderRadiusGeometry? border;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        height: height,
        decoration: BoxDecoration(
            color: ColorApp.kPrimaryColor,
            borderRadius:border?? BorderRadius.circular(7)),
        child: Text(
          title,
          style: Styles.textStyle16.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
