import 'package:flutter/material.dart';

const Color primaryClr = Color(0xFF4e5ae8);
const Color darkGreyClr = Color(0xff121212);

class Themes {
  static final light = ThemeData(
      backgroundColor: Colors.white,
      primaryColor: primaryClr,
      brightness: Brightness.light);
  static final dark = ThemeData(
      backgroundColor: darkGreyClr,
      primaryColor: darkGreyClr,
      brightness: Brightness.dark);
}
