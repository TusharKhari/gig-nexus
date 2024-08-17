import 'package:get/route_manager.dart';
import 'package:gig_nexus/features/auth/presentation/screens/login_screen.dart';
import 'package:gig_nexus/utils/constants/app_constants.dart';

import '../../bottom_nav_bar.dart';
import '../../features/auth/presentation/screens/otp_verification_screen.dart';

var routePages = [
  GetPage(
    name: appRouteNamesConst.loginScreen,
    page: () => LoginScreen(),
  ),
  GetPage(
    name: appRouteNamesConst.otpVerificationScreen,
    page: () => OtpVerificationScreen(),
  ),
  GetPage(
    name: appRouteNamesConst.bottomNavBar,
    page: () => BottomNavBar(),
  ),
];
