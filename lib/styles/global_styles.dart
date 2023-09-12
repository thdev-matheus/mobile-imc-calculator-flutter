import 'package:flutter/material.dart';

Color primary = Colors.purple[900]!;
Color secondary = Colors.amber[900]!;
Color black = Colors.black87;
Color white = Colors.white;

ButtonStyle primaryButtonStyle = ButtonStyle(
  backgroundColor: MaterialStatePropertyAll(primary),
  foregroundColor: MaterialStatePropertyAll(white),
  padding: const MaterialStatePropertyAll(
    EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 8,
    ),
  ),
  shape: MaterialStatePropertyAll(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  ),
);

ButtonStyle secondaryButtonStyle = ButtonStyle(
  backgroundColor: MaterialStatePropertyAll(secondary),
  foregroundColor: MaterialStatePropertyAll(white),
  padding: const MaterialStatePropertyAll(
    EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 8,
    ),
  ),
  shape: MaterialStatePropertyAll(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  ),
);
