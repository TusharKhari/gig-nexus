import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gig_nexus/utils/constants/app_constants.dart';

import '../../utils/widgets/button.dart';
import '../../utils/widgets/customTextField.dart';

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
                    padding: const EdgeInsets.all(15.0),
                    child: Center(
                      child: Image.asset(appImagesConst.personImage,
                          width: 150, height: 150, fit: BoxFit.fill),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Full Name",
                    style:
                        TextStyle(color: appColorsConst.cBlack, fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              const CustomTextField(
                // errorText: "Wrong Phone Number",
                keyboardType: TextInputType.number,
                hintText: "Enter Full Name",
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Gender",
                    style:
                        TextStyle(color: appColorsConst.cBlack, fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              CustomTextField(
                keyboardType: TextInputType.number,
                hintText: "Gender",
                // enabled: false,
                suffixIcon: Icon(
                  Icons.keyboard_arrow_down_sharp,
                  color: appColorsConst.grey,
                  size: 32,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Date of Birth",
                    style:
                        TextStyle(color: appColorsConst.cBlack, fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              CustomTextField(
                // errorText: "Wrong Phone Number",
                keyboardType: TextInputType.number,
                hintText: "DD/MM/YYYY",
                // enabled: false,
                suffixIcon: Icon(
                  Icons.calendar_month,
                  color: appColorsConst.cBlue,
                  size: 32,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Your Profession",
                    style:
                        TextStyle(color: appColorsConst.cBlack, fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              CustomTextField(
                keyboardType: TextInputType.number,
                hintText: "Please Select",
                // enabled: false,
                suffixIcon: Icon(
                  Icons.keyboard_arrow_down_sharp,
                  color: appColorsConst.grey,
                  size: 32,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "More About Profession",
                    style:
                        TextStyle(color: appColorsConst.cBlack, fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              CustomTextField(
                keyboardType: TextInputType.number,
                hintText: "Your Expertise",
                // enabled: false,
                suffixIcon: Icon(
                  Icons.keyboard_arrow_down_sharp,
                  color: appColorsConst.grey,
                  size: 32,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Address Line 1",
                    style:
                        TextStyle(color: appColorsConst.cBlack, fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              const CustomTextField(
                keyboardType: TextInputType.number,
                hintText: "Address Line 1",
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Address Line 2",
                    style:
                        TextStyle(color: appColorsConst.cBlack, fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              const CustomTextField(
                keyboardType: TextInputType.number,
                hintText: "Address Line 2",
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "State",
                    style:
                        TextStyle(color: appColorsConst.cBlack, fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              CustomTextField(
                keyboardType: TextInputType.number,
                hintText: "Please Select",
                // enabled: false,
                suffixIcon: Icon(
                  Icons.keyboard_arrow_down_sharp,
                  color: appColorsConst.grey,
                  size: 32,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "City",
                    style:
                        TextStyle(color: appColorsConst.cBlack, fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              CustomTextField(
                borderColor: appColorsConst.lightGrey,
                keyboardType: TextInputType.number,
                hintText: "Enter City",
                // enabled: false,
                suffixIcon: Icon(
                  Icons.keyboard_arrow_down_sharp,
                  color: appColorsConst.grey,
                  size: 32,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Pin code",
                    style:
                        TextStyle(color: appColorsConst.cBlack, fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              CustomTextField(
                borderColor: appColorsConst.lightGrey,
                keyboardType: TextInputType.number,
                hintText: "Enter Pin code",

                // enabled: false,
                suffixIcon: Icon(
                  Icons.keyboard_arrow_down_sharp,
                  color: appColorsConst.grey,
                  size: 32,
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Button(
                width: double.infinity,
                fontSize: 16,
                onPressed: () {
                  // Get.toNamed(appRouteNamesConst.otpVerificationScreen);
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
