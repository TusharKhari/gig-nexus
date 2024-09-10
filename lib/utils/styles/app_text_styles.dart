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


  TextStyle o28500White = TextStyle(
    fontFamily: "Outfit",
    fontSize: 16.spMin,
    fontWeight: FontWeight.w500,
    color: appColorsConst.cWhite,
  );
  TextStyle o28500787E = TextStyle(
    fontFamily: "Outfit",
    fontSize: 16.spMin,
    fontWeight: FontWeight.w500,
    color: appColorsConst.c787E86,
  );
  TextStyle o16400134E = TextStyle(
    fontFamily: "Outfit",
    fontSize: 16.spMin,
    fontWeight: FontWeight.w400,
    color: appColorsConst.c134EA1,
  );
  TextStyle o28700White = TextStyle(
    fontFamily: "Outfit",
    fontSize: 28.spMin,
    fontWeight: FontWeight.w700,
    color: appColorsConst.cWhite,
  );
    TextStyle o40700White = TextStyle(
    fontFamily: "Outfit",
    fontSize: 40.spMin,
    fontWeight: FontWeight.w700,
    color: appColorsConst.cWhite,
  );

}
