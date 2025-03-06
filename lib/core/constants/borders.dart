import 'package:flutter/material.dart';

class CustomBorders {
  static OutlineInputBorder roundedFouceBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: const BorderSide(
      width: 2,
      color: Colors.blueAccent,
    ),
  );
  static OutlineInputBorder roundedBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
  );
}
