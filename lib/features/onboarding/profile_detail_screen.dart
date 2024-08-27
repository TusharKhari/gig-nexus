import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gig_nexus/utils/constants/app_constants.dart';

import '../../common/custom_field_with_header.dart';
import '../../common/button.dart';
import '../../common/customTextField.dart';
import 'kyc_details_screen.dart';

class ProfileDetailScreen extends StatefulWidget {
  const ProfileDetailScreen({super.key});

  @override
  State<ProfileDetailScreen> createState() => _ProfileDetailScreenState();
}

class _ProfileDetailScreenState extends State<ProfileDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 18, left: 18, bottom: 18),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(
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
                    "Profile Detail",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color(0xff1E1E1E),
                        fontSize: 28),
                  )
                ],
              ),
              Row(
                children: [
                  Flexible(
                      child: Container(
                    height: 2,
                    color: appColorsConst.cBlue,
                  )),
                  const SizedBox(
                    width: 12,
                  ),
                  Flexible(
                      child: Container(
                    height: 2,
                    color: appColorsConst.grey,
                  ))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        color: appColorsConst.borderWhite,
                        fontSize: 16,
                      ),
                      children: [
                        TextSpan(
                          text: 'Step 1 ',
                          style: TextStyle(color: appColorsConst.cBlue),
                        ),
                        TextSpan(
                          text: 'of 2',
                          style: TextStyle(color: appColorsConst.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Center(
                    child: Image.asset(appImagesConst.profileBackgroundImage,
                        width: 200, height: 200, fit: BoxFit.fill),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Center(
                      child: Image.asset(appImagesConst.personImage,
                          width: 100, height: 100, fit: BoxFit.fill),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 95,
                    child: Image.asset(appImagesConst.plusIcon,
                        width: 50, height: 50, fit: BoxFit.fill),
                  )
                ],
              ),
              CustomFieldWithHeader(
                heading: "Full Name",
                hintText: "Enter Full Name",
              ),
              CustomFieldWithHeader(
                heading: "Gender",
                hintText: "Gender",
                suffixIcon: Icon(Icons.keyboard_arrow_down_sharp),
              ),
              CustomFieldWithHeader(
                heading: "Date of Birth",
                hintText: "Gender",
                suffixIcon: Icon(Icons.calendar_month),
              ),
              CustomFieldWithHeader(
                heading: "Your Profession",
                hintText: "Please Select",
                suffixIcon: Icon(Icons.keyboard_arrow_down_sharp),
              ),
              CustomFieldWithHeader(
                heading: "More About Profession",
                hintText: "Your Expertise",
                suffixIcon: Icon(Icons.keyboard_arrow_down_sharp),
              ),
              CustomFieldWithHeader(
                heading: "Address Line 1",
                hintText: "Address Line 1",
              ),
              CustomFieldWithHeader(
                heading: "Address Line 2",
                hintText: "Address Line 2",
              ),
              CustomFieldWithHeader(
                heading: "State",
                hintText: "Please Select",
                suffixIcon: Icon(
                  Icons.keyboard_arrow_down_sharp,
                  color: appColorsConst.grey,
                  size: 32,
                ),
              ),
              CustomFieldWithHeader(
                heading: "City",
                hintText: "Please Select",
                suffixIcon: Icon(
                  Icons.keyboard_arrow_down_sharp,
                  color: appColorsConst.grey,
                  size: 32,
                ),
              ),
              CustomFieldWithHeader(
                heading: "Pin code",
                hintText: "Enter Pin code",
              ),
              Button(
                width: double.infinity,
                fontSize: 16,
                onPressed: () {
                  // Get.toNamed(appRouteNamesConst.otpVerificationScreen);
                  Get.to(KYCDetailsScreen());
                },
                title: "Next",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
