import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Constants {
  static TextStyle kLabelTextStyle = GoogleFonts.dancingScript(
    fontSize: 35,
    color: Colors.black,
  );
  static TextStyle kBtnTextStyle = GoogleFonts.pacifico(
    fontSize: 25,
    color: Colors.green.shade200,
  );

  static const String kLabelText = 'Your ticket to the kitchen';
  static const String kLabelWelcome = 'Welcome,';
  static const String kLabelDive = 'Dive In';
}
