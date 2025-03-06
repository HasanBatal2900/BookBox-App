import 'package:book_box/core/constants/borders.dart';
import 'package:book_box/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class InputTextField extends StatefulWidget {
  const InputTextField(
      {super.key,
      required this.title,
      required this.hintTitle,
      required this.onChanged,
      required this.validator,
      this.isPassword = false,
      this.keyboardType});
  final String title;
  final String hintTitle;
  final void Function(String? text) onChanged;

  final String? Function(String? text) validator;
  final bool isPassword;
  final TextInputType? keyboardType;

  @override
  State<InputTextField> createState() => _InputTextFieldState();
}

class _InputTextFieldState extends State<InputTextField> {

  bool isHidden = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: Styles.textStyle18,
        ),
        const Gap(5),
        SizedBox(
          height: 70,
          child: TextFormField(
            onTapOutside: (event) => FocusScope.of(context).unfocus(),
            obscureText: isHidden,
            onChanged: widget.onChanged,
            validator: widget.validator,
            autocorrect: true,
            keyboardType: widget.keyboardType ?? TextInputType.streetAddress,
            decoration: InputDecoration(
              hintText: widget.hintTitle,
              focusedBorder: CustomBorders.roundedFouceBorder,
              border: CustomBorders.roundedBorder,
              suffixIcon: widget.isPassword
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          isHidden = !isHidden;
                        });
                      },
                      icon: !isHidden
                          ? const Icon(
                              Icons.visibility,
                              color: Colors.blueAccent,
                            )
                          : const Icon(
                              Icons.visibility_off,
                              color: Colors.grey,
                            ),
                    )
                  : null,
            ),
          ),
        ),
      ],
    );
  }
}
