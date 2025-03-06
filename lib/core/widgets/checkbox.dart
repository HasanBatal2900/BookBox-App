
import 'package:book_box/core/constants/styles.dart';
import 'package:flutter/material.dart';

class CheckBoxCoach extends StatefulWidget {
  const CheckBoxCoach({super.key, required this.onChanged,required this.title});
  final void Function(bool? changed) onChanged;
  final String title ;
  @override
  State<CheckBoxCoach> createState() => _CheckBoxCoachState();
}

class _CheckBoxCoachState extends State<CheckBoxCoach> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          onChanged: (bool? changed) {
            setState(() {
              isChecked = changed!;
            });
            widget.onChanged(changed);
          },
        ),
        Text(
         widget.title,
          style: Styles.textStyle14,
        )
      ],
    );
  }
}
