import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:gig_nexus/utils/constants/app_constants.dart';
import 'package:gig_nexus/utils/widgets/button.dart';
import 'package:gig_nexus/utils/widgets/customTextField.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var mqH = MediaQuery.of(context).size.height;
    var mqW = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: appColorsConst.cWhite,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Image.asset(
                appImagesConst.appThemeImagePNG,
                width: mqW,
                height: mqH * 0.5,
                // width: 430,
                // height: 476,
                fit: BoxFit.fill,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Center(
                    child: SizedBox(
                      height: 100,
                    ),
                  ),
                  Image.asset(
                    appImagesConst.appLogoImagePNG,
                    width: mqW * 0.6,
                    height: mqH * 0.2,
                    // height: 218,
                    // width: 163,
                    fit: BoxFit.contain,
                  ),
                  Text(
                    "Sign in to Your",
                    style: TextStyle(
                        color: appColorsConst.cWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 40),
                  ),
                  Text(
                    "Account",
                    style: TextStyle(
                        color: appColorsConst.cWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 40),
                  ),
                  Text(
                    "Enter your details below.",
                    style: TextStyle(
                        color: appColorsConst.cWhite,
                        fontWeight: FontWeight.w200,
                        fontSize: 18),
                  ),
                ],
              ),
            ]),

            const SizedBox(
              height: 20,
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Phone Number",
                    style:
                        TextStyle(color: appColorsConst.cBlack, fontSize: 16),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: CustomTextField(
                prefixIcon: Image.asset(
                  appImagesConst.callIcon,
                  color: appColorsConst.textGrey,
                  scale: 4,
                ),
                errorText: "Wrong Phone Number",
                keyboardType: TextInputType.number,
                maxLength: 10,
                hintText: "Enter Phone Number",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                children: [
                  Transform.scale(
                    scale: 1.5,
                    child: Checkbox(
                      value: true,
                      onChanged: (value) {},
                      checkColor: appColorsConst.cBlue,
                      activeColor: appColorsConst.cWhite,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      side: WidgetStateBorderSide.resolveWith(
                        (states) =>
                            BorderSide(width: 1.0, color: appColorsConst.grey),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Text(
                      "I agree to the terms and conditions & privacy policy.",
                      style: TextStyle(
                          color: appColorsConst.cBlack,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Button(
                width: double.infinity,
                fontSize: 16,
                onPressed: () {
                  Get.toNamed(appRouteNamesConst.otpVerificationScreen);
                },
                title: "Sign In",
              ),
            ),
            const SizedBox(
              height: 18,
            ),

            const SizedBox(
              height: 44,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    appImagesConst.notesIcon,
                    color: appColorsConst.cBlue,
                    scale: 4,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "Terms & Conditions",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    appImagesConst.lockIcon,
                    color: appColorsConst.cBlue,
                    scale: 4,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "Privacy Policy",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Text(
                "Powered By GIGNEXUS",
                style: TextStyle(
                    fontSize: 18,
                    color: appColorsConst.gigNexusColor,
                    fontWeight: FontWeight.bold),
              ),
            )

            // RichText(
            //   text: TextSpan(
            //     style: TextStyle(
            //       color: appColorsConst.borderWhite,
            //       fontSize: 16,
            //     ),
            //     children: const [
            //       TextSpan(
            //         text: 'Terms & Conditions',
            //         style: TextStyle(
            //           decoration: TextDecoration.underline,
            //         ),
            //       ),
            //       TextSpan(
            //         text: ', ',
            //       ),
            //       TextSpan(
            //         text: 'Privacy Policy',
            //         style: TextStyle(
            //           decoration: TextDecoration.underline,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // const SizedBox(
            //   height: 20,
            // )
            // Image(image: )
          ],
        ),
      ),
    );
  }
}
