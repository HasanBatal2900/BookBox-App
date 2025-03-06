import 'package:flutter/material.dart';
import '../../constants/styles.dart';
import 'package:quickalert/quickalert.dart';

buildQuickAlret(
    BuildContext context,{required QuickAlertType type,required String text,required void Function()onTap}) {
  return QuickAlert.show(onConfirmBtnTap:onTap ,
      context: context,
      barrierColor: Theme.of(context).colorScheme.primary.withOpacity(0.1),
      barrierDismissible: true,
      type: type,
      text: text,
      textColor: Theme.of(context).colorScheme.onBackground,
      animType: QuickAlertAnimType.scale,
      titleColor: Theme.of(context).colorScheme.onBackground,
      backgroundColor: Theme.of(context).colorScheme.background,
      confirmBtnColor: type == QuickAlertType.error
          ? Colors.red
          : Theme.of(context).colorScheme.primary,
      confirmBtnTextStyle: Styles.textStyle16.copyWith(
        color: Theme.of(context).colorScheme.background,
        fontFamily: "Mont-reg",
      ));
}
