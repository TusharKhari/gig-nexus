import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:gig_nexus/utils/constants/app_constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(onPressed: () {
          Get.toNamed(appRouteNamesConst.otpVerificationScreen);
        }, child: Text("Login"), ),
      ),
    );
  }
}
