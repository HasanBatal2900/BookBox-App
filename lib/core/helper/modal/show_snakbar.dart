import 'package:flutter/material.dart';

showSnakBar(BuildContext context, String message, Color color) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      margin: const EdgeInsets.all(12),
      behavior: SnackBarBehavior.floating,
      backgroundColor: color,
      content: Container(
        height: 20,
        alignment: Alignment.center,
        child: Text(
          message,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      duration: const Duration(milliseconds: 2500),
    ),
  );
}
