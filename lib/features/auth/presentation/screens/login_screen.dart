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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Image.asset(
                appImagesConst.appThemeImagePNG,
                width: mqW,
                height: mqH * 0.55,
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
                        fontWeight: FontWeight.w100,
                        fontSize: 20),
                  ),
                ],
              ),
            ]),

            const SizedBox(
              height: 20,
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextField(
                hintText: "Enter Phone Number",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Button(
                width: double.infinity,
                fontSize: 16,
                onPressed: () {
                  Get.toNamed(appRouteNamesConst.otpVerificationScreen);
                },
                title: "Login",
              ),
            )
            // Image(image: )
          ],
        ),
      ),
    );
  }
}
