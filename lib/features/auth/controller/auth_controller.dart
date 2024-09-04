import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../utils/constants/app_constants.dart';

class AuthController extends GetxController {
  final phoneNumberController = TextEditingController();

  void sendOtp() async {
    try {
      await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: "+91${phoneNumberController.text}",
        verificationCompleted: (PhoneAuthCredential credential) async {},
        verificationFailed: (FirebaseAuthException e) {
          print("Verification Failed: ${e.message}");
        },
        codeSent: (String verificationId, int? resendToken) {
          Get.toNamed(appRouteNamesConst.otpVerificationScreen);
        },
        codeAutoRetrievalTimeout: (String verificationId) {},
      );
    } catch (e) {
      log("message  $e");
    }
  }

  String verificationId = "";
  RxBool isOtpSent = false.obs;
  Future<bool?> verificationByPhoneNo({
    required String phoneNo,
  }) async {
    FirebaseAuth auth = FirebaseAuth.instance;
// );

    log("verificationByPhoneNooo ---> $phoneNo");
    try {
      await auth.verifyPhoneNumber(
        phoneNumber: '+91 $phoneNo',
        // phoneNumber: '+44 7123 123 456',
        verificationCompleted: (PhoneAuthCredential credential) async {
          await auth.signInWithCredential(credential);
          // routeToLastStep(
          //     step: userData?.data?.user?.onboardingLevel ?? 0,
          //     isBusiness:
          //         userData?.data?.user?.type?.contains("business") ?? false);
          // on otp verified
        },
        verificationFailed: (FirebaseAuthException e) {},
        codeSent: (String verificationIdd, int? resendToken) {
          verificationId = verificationIdd;
          log("verificationIdddd ---> $verificationIdd");
          isOtpSent.value = true;
        },
        codeAutoRetrievalTimeout: (String verificationIdd) {
          verificationId = verificationIdd;
        },
      );
    } catch (e) {
      log("verificationByPhoneNoo ---> $e");
    }
    return isOtpSent.value;
  }

  Future<void> verifyPhoneNoOtp({required String otp}) async {
    log("verifyPhoneNoOtpp  $otp");
    try {
      FirebaseAuth auth = FirebaseAuth.instance;
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
          verificationId: verificationId, smsCode: otp);
      await auth.signInWithCredential(credential);
      // auth completed
    } catch (e) {
      // error snackbar
      Get.snackbar(
        "Error",
        "$e",
      );
      log("verifyPhoneNoOtpp ---> $e");
    }
  }

  @override
  void dispose() {
    phoneNumberController.dispose();
    super.dispose();
  }
}
