import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget mainText(String mainText) {
  return Text(
    mainText,
    style: GoogleFonts.roboto(
        fontWeight: FontWeight.w500, fontStyle: FontStyle.normal, fontSize: 24),
    textAlign: TextAlign.center,
  );
}

Widget ownText(String ownText, Color color) {
  return Text(
    ownText,
    style: GoogleFonts.roboto(
        fontSize: 14,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        color: color),
    textAlign: TextAlign.center,
  );
}
