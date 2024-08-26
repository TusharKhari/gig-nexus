import 'package:flutter/material.dart';

class AppColors {
  static final AppColors _appColors = AppColors._internal();

  factory AppColors() {
    return _appColors;
  }
  AppColors._internal();

  // ===================

  Color cWhite = Color(0xffFFFFFF);
  Color grey = Color(0xff787E86);
  Color lightGrey = Color(0xffB4BAC2);

  Color borderWhite = Color(0xffB4BAC2);
  Color cBlue = Color(0xff233C7E);
  Color cBlack = Color(0xff1E242C);
  Color textGrey = Color(0xffB4BAC2);
  Color gigNexusColor = Color(0xff60666E);
}
