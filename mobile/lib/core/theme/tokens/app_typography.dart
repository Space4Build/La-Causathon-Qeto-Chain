import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTypography {
  static const TextStyle baseText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );

  static final TextStyle titleText = baseText.copyWith(
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle subtitleText = baseText.copyWith(
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );

  //nunito
  static TextStyle nunito = GoogleFonts.nunito();

  //bebasNeue
  static TextStyle bebasNeue = GoogleFonts.bebasNeue();

  //montserrat
  static TextStyle montserrat = GoogleFonts.montserrat();
}
