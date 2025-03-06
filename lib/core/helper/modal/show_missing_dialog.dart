
import 'package:book_box/core/constants/colors.dart';
import 'package:flutter/material.dart';


void showMissingEmailDialog(BuildContext context, String message) {
  showGeneralDialog(
    context: context,
    barrierDismissible: true,
    barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
    barrierColor: Colors.black.withOpacity(0.5),
    transitionDuration: const Duration(milliseconds: 1200),
    pageBuilder: (context, animation, secondaryAnimation) {
      animation = CurvedAnimation(parent: animation, curve: Curves.bounceInOut);
      return FadeTransition(
        opacity: animation,
        child: Center(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 15,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Error',
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 20,
                      color: Color(0xFF1C1C1E)),
                ),
                const SizedBox(height: 20),
                Text(
                  message,
                  style:  TextStyle(
                      fontSize: 16,
                      color: ColorApp.kLightBackground,
                      decoration: TextDecoration.none),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorApp.kPrimaryColor,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Okay'),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
