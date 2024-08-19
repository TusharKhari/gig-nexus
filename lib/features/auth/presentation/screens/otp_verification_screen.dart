import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gig_nexus/utils/widgets/button.dart';
import 'package:gig_nexus/utils/widgets/customTextField.dart';
import 'package:pinput/pinput.dart';

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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      // Get.toNamed(appRouteNamesConst.loginScreen);
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      size: 32,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.18,
                  ),
                  const Text(
                    "Verification",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff1E1E1E),
                        fontSize: 28),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Text(
                "We sent you a message on your phone number with 4 digit OTP to verify your account.",
                style: TextStyle(color: appColorsConst.grey, fontSize: 14),
              ),
            ),
            const SizedBox(
              height: 84,
            ),
            Pinput(
              length: 4,
              showCursor: true,
              onCompleted: (pin) {
                print('Entered OTP: $pin');
              },
              defaultPinTheme: PinTheme(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                width: 56,
                height: 56,
                textStyle: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  // fontWeight: FontWeight.bold,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: appColorsConst.grey),
                ),
              ),
            ),
            const SizedBox(
              height: 44,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                        style: TextStyle(
                          color: appColorsConst.cBlack,
                          fontSize: 16,
                        ),
                        children: [
                          const TextSpan(
                            text: 'Resend OTP in',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          TextSpan(
                              text: " 32s",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: appColorsConst.cBlue))
                        ]),
                  ),
                  RichText(
                    text: TextSpan(
                        style: TextStyle(
                          color: appColorsConst.cBlack,
                          fontSize: 16,
                        ),
                        children: [
                          const TextSpan(
                            text: 'Change Phone Number?',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 34,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Button(
                width: double.infinity,
                title: "Submit",
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Text(
                "Note : for your account security, do not share your OTP with anyone",
                style: TextStyle(color: appColorsConst.grey, fontSize: 14),
              ),
            ),
            const SizedBox(
              height: 200,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "MADE WITH",
                    style: TextStyle(fontSize: 21, color: appColorsConst.cBlue),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    appImagesConst.heartImagePNG,
                    width: 21,
                    height: 21,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "IN INDIA",
                    style: TextStyle(fontSize: 21, color: appColorsConst.cBlue),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed(appRouteNamesConst.loginScreen);
              },
              child: const Text("Otp"),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed(appRouteNamesConst.bottomNavBar);
              },
              child: const Text("Bottom"),
            ),
          ],
        ),
      ),
    );
  }
}
