import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../utils/constants/app_constants.dart';

class AuthController extends GetxController {
  final phoneNumberController = TextEditingController();
  @override
  void dispose() {
    phoneNumberController.dispose();
    super.dispose();
  }

  void sendOtp() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: "+91${phoneNumberController.text}",
      verificationCompleted: (PhoneAuthCredential credential) async {
      },
      verificationFailed: (FirebaseAuthException e) {
        print("Verification Failed: ${e.message}");
      },
      codeSent: (String verificationId, int? resendToken) {
        Get.toNamed(appRouteNamesConst.otpVerificationScreen);
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }
}
