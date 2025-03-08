import 'package:book_box/core/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.sizeOf(context).width * .85,
      backgroundColor: Theme.of(context).colorScheme.background,
      elevation: 6.0,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30.0),
      )),
      child: Container(
        color: ColorApp.kPrimaryColor,
        child:const SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [],
          ),
        ),
      ),
    );
  }
}
