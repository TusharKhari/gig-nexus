import 'package:flutter/material.dart';

class AppColors {
  static final AppColors _appColors = AppColors._internal();

  factory AppColors() {
    return _appColors;
  }
  AppColors._internal();

  // ===================

  Color cWhite = Color(0xffFFFFFF);
  Color borderWhite = Color(0xffB4BAC2);
  Color cBlue = Color(0xff233C7E);
}
