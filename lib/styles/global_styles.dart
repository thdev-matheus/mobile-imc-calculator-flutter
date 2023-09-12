import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color primary = Colors.purple[900]!;
Color secondary = Colors.amber[900]!;
Color tertiary = Colors.green[900]!;
const Color black = Colors.black87;
const Color white = Colors.white;

TextStyle primaryTextStyle(
        {Color color = black,
        double size = 12,
        FontWeight weight = FontWeight.normal}) =>
    GoogleFonts.inter(
      color: color,
      fontSize: size,
      fontWeight: weight,
    );

ButtonStyle primaryButtonStyle = ButtonStyle(
  backgroundColor: MaterialStatePropertyAll(primary),
  foregroundColor: const MaterialStatePropertyAll(white),
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
  foregroundColor: const MaterialStatePropertyAll(white),
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
