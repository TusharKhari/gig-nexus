import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/app_constants.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            onPressed: () {
              Get.toNamed(appRouteNamesConst.loginScreen);
            },
            child: Text("Otp"),
          ),
          TextButton(
            onPressed: () {
              Get.toNamed(appRouteNamesConst.bottomNavBar);
            },
            child: Text("Bottom"),
          ),
        ],
      ),
    );
  }
}
