import 'package:travel_app/themes/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData myTheme = ThemeData(
  primaryColor: ThemeColors.primaryColor,
  brightness: Brightness.dark,
  textTheme: TextTheme(
    bodyMedium: GoogleFonts.roboto(
      fontSize: 16,
    ),
    bodyLarge: GoogleFonts.roboto(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),
);
