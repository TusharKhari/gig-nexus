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
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: CustomTextField(
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Text(
                "By signing in, you agree to our Terms and Conditions & Privacy Policy.",
                style:
                    TextStyle(color: appColorsConst.borderWhite, fontSize: 14),
              ),
            ),
            const SizedBox(
              height: 44,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'WELCOME TO ',
                          style: TextStyle(
                            color: Colors.blue.shade900,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const TextSpan(
                          text: 'GIG',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const TextSpan(
                          text: ' N',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const TextSpan(
                          text: 'E',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const TextSpan(
                          text: 'X',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const TextSpan(
                          text: 'U',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const TextSpan(
                          text: 'S',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: '!',
                          style: TextStyle(
                            color: Colors.blue.shade900,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'PLEASE SIGN IN TO CONTINUE.',
                    style: TextStyle(
                      color: Colors.blue.shade900,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 44,
            ),

            RichText(
              text: TextSpan(
                style: TextStyle(
                  color: appColorsConst.borderWhite,
                  fontSize: 16,
                ),
                children: const [
                  TextSpan(
                    text: 'Terms & Conditions',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  TextSpan(
                    text: ', ',
                  ),
                  TextSpan(
                    text: 'Privacy Policy',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            )
            // Image(image: )
          ],
        ),
      ),
    );
  }
}
