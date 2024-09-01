class AppRouteNames {
  static final AppRouteNames _appRouteNames = AppRouteNames._internal();

  factory AppRouteNames() {
    return _appRouteNames;
  }
  AppRouteNames._internal();

  // ===================

  String loginScreen = "/LoginScreen";
  String otpVerificationScreen = "/OtpVerificationScreen";
  String bottomNavBar = "/BottomNavBar";
}
