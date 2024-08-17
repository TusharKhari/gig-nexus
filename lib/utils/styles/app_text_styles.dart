import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gig_nexus/utils/constants/app_constants.dart';

class AppTextStyles {
  static final AppTextStyles _appTextSAppTextStyles = AppTextStyles._internal();

  factory AppTextStyles() {
    return _appTextSAppTextStyles;
  }
  AppTextStyles._internal();

  // ===================

  TextStyle o40700White = TextStyle(
    fontFamily: "Outfit",
    fontSize: 40.spMin,
    fontWeight: FontWeight.w700,
    color: appColorsConst.cWhite,
  );
}
