import 'package:book_box/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ReturnButton extends StatelessWidget {
  const ReturnButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).pop(),
      child:  CircleAvatar(
        radius: 20,
        backgroundColor: ColorApp.kDarkBackground,
        child:const Padding(
          padding: EdgeInsets.only(left: 8),
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
