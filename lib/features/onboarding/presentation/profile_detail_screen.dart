import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gig_nexus/common/dropdowns/app_dropdown_widget.dart';
import 'package:gig_nexus/common/functions/app_common_function.dart';
import 'package:gig_nexus/features/onboarding/controller/onboarding_controller.dart';
import 'package:gig_nexus/models/city_state_modal.dart';
import 'package:gig_nexus/models/professions_model.dart';
import 'package:gig_nexus/utils/constants/app_constants.dart';
import 'package:image_picker/image_picker.dart';

import '../../../common/custom_field_with_header.dart';
import '../../../common/button.dart';
import 'kyc_details_screen.dart';

class ProfileDetailScreen extends StatefulWidget {
  const ProfileDetailScreen({super.key});

  @override
  State<ProfileDetailScreen> createState() => _ProfileDetailScreenState();
}

class _ProfileDetailScreenState extends State<ProfileDetailScreen> {
  late OnboardingController onboardingController;
  TextEditingController fullNameController = TextEditingController();
  TextEditingController addressLineController = TextEditingController();
  TextEditingController pinController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    init();
    super.initState();
  }

  void init() {
    onboardingController = Get.put(OnboardingController(),
        tag: "onboardingController", permanent: true);
    onboardingController.getProfessions();
    onboardingController.getCityList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GetBuilder(
          init: onboardingController,
          builder: (controller) {
            return SingleChildScrollView(
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
                          color:  appColorsConst.c233C7E,
                        )),
                        const SizedBox(
                          width: 12,
                        ),
                        Flexible(
                            child: Container(
                          height: 2,
                          color: appColorsConst.c787E86,
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
                              color: appColorsConst.cB4BAC2,
                              fontSize: 16,
                            ),
                            children: [
                              TextSpan(
                                text: 'Step 1 ',
                                style: TextStyle(color:  appColorsConst.c233C7E),
                              ),
                              TextSpan(
                                text: 'of 2',
                                style: TextStyle(color: appColorsConst.c787E86),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Center(
                          child: Image.asset(
                              appImagesConst.profileBackgroundImage,
                              width: 200,
                              height: 200,
                              fit: BoxFit.fill),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Center(
                            child: controller.profileImage != null
                                ? Image.file(
                                    File(controller.profileImage?.path ?? ""),
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.fill)
                                : Image.asset(appImagesConst.personImage,
                                    width: 100, height: 100, fit: BoxFit.fill),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 95,
                          child: InkWell(
                            onTap: () async {
                              log("message");
                              var image = await AppCommonFunctions()
                                  .getImage(ImageSource.gallery);
                              controller.profileImage = image;
                              controller.update();
                            },
                            child: Image.asset(appImagesConst.plusIcon,
                                width: 50, height: 50, fit: BoxFit.fill),
                          ),
                        )
                      ],
                    ),
                    CustomFieldWithHeader(
                      heading: "Full Name",
                      hintText: "Enter Full Name",
                      controller: fullNameController,
                      keyboardType: TextInputType.name,
                    ),
                    // CustomFieldWithHeader(
                    //   heading: "Gender",
                    //   hintText: "Gender",
                    //   suffixIcon: Icon(Icons.keyboard_arrow_down_sharp),
                    // ),
                    AppDropDownWidget(
                      title: "Gender",
                      selectedTitle: controller.gender,
                      options: ["Male", "Female", "Other"],
                      onChanged: (p0) {
                        controller.gender = p0.toString();
                        controller.update();
                      },
                    ),
                    InkWell(
                      onTap: () async {
                        var date = await showDatePicker(
                            context: context,
                            firstDate: DateTime.utc(
                              1901,
                            ),
                            lastDate: DateTime.now());
                        if (date != null) {
                          controller.dateOfBirth =
                              "${date.day}/${date.month}/${date.year}";
                          controller.update();
                        }
                      },
                      child: CustomFieldWithHeader(
                        heading: "Date of Birth",
                        hintText: controller.dateOfBirth ?? "Gender",
                        isEnabled: false,
                        suffixIcon: Icon(Icons.calendar_month),
                      ),
                    ),
                    // CustomFieldWithHeader(
                    //   heading: "Your Profession",
                    //   hintText: "Please Select",
                    //   suffixIcon: Icon(Icons.keyboard_arrow_down_sharp),
                    // ),
                    AppDropDownWidget(
                      options: [],
                      items: controller.professionsList
                          .map(
                            (e) => DropdownMenuItem(
                                value: e,
                                child: Text(
                                  "${e.category}",
                                )),
                          )
                          .toList(),
                      onChanged: (p0) {
                        if (p0 is ProfessionsModel) {
                          controller.profession = p0.category;
                          controller.selectedProfession = p0;
                          controller.update();
                        }
                      },
                      title: "Your Profession",
                      selectedTitle: controller.profession,
                    ),
                    // CustomFieldWithHeader(
                    //   heading: "More About Profession",
                    //   hintText: "Your Expertise",
                    //   suffixIcon: Icon(Icons.keyboard_arrow_down_sharp),
                    // ),
                    AppDropDownWidget(
                      options:
                          controller.selectedProfession?.subCategories ?? [],
                      title: "More About Profession",
                      selectedTitle: controller.moreAboutProfession,
                      onChanged: (p0) {
                        controller.moreAboutProfession = p0.toString();
                        controller.update();
                      },
                    ),
                    CustomFieldWithHeader(
                      heading: "Address Line 1",
                      hintText: "Address Line 1",
                      controller: addressLineController,
                    ),

                    AppDropDownWidget(
                      options: [],
                      items: controller.cityStateList
                          .map(
                            (e) => DropdownMenuItem(
                                value: e,
                                child: Text(
                                  "${e.state}",
                                )),
                          )
                          .toList(),
                      onChanged: (p0) {
                        if (p0 is CityStateModal) {
                          controller.state = p0.state;
                          controller.selectedState = p0;
                          controller.update();
                        }
                      },
                      title: "State",
                      selectedTitle: controller.state,
                    ),

                    AppDropDownWidget(
                      options: controller.selectedState?.cities ?? [],
                      title: "City",
                      selectedTitle: controller.city,
                      onChanged: (p0) {
                        controller.city = p0.toString();
                        controller.update();
                      },
                    ),
                    CustomFieldWithHeader(
                      heading: "Pin code",
                      hintText: "Enter Pin code",
                      controller: pinController,
                    ),
                    Button(
                      width: double.infinity,
                      fontSize: 16,
                      onPressed: () {
                        // Get.toNamed(appRouteNamesConst.otpVerificationScreen);
                        controller.fullName = fullNameController.text.trim();
                        controller.addressLine =
                            addressLineController.text.trim();
                        controller.pinCode = pinController.text.trim();
                        Get.to(KYCDetailsScreen());
                      },
                      title: "Next",
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
