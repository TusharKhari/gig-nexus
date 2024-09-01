import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gig_nexus/common/custom_field_with_header.dart';
import 'package:gig_nexus/common/functions/app_common_function.dart';
import 'package:gig_nexus/features/onboarding/controller/onboarding_controller.dart';
import 'package:gig_nexus/utils/constants/app_constants.dart';
import 'package:gig_nexus/common/button.dart';
import 'package:image_picker/image_picker.dart';

class KYCDetailsScreen extends StatefulWidget {
  const KYCDetailsScreen({super.key});

  @override
  State<KYCDetailsScreen> createState() => _KYCDetailsScreenState();
}

class _KYCDetailsScreenState extends State<KYCDetailsScreen> {
  late OnboardingController onboardingController;
  TextEditingController panNumberController = TextEditingController();
  TextEditingController bankNameController = TextEditingController();
  TextEditingController branchNameController = TextEditingController();
  TextEditingController bankAccountNoController = TextEditingController();
  TextEditingController ifscCodeController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    init();
    super.initState();
  }

  void init() {
    onboardingController = Get.find(tag: "onboardingController");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColorsConst.cWhite,
      body: GetBuilder(
          init: onboardingController,
          builder: (controller) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(right: 18, left: 18, bottom: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                          "KYC Details",
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
                          child: Image.asset(appImagesConst.kycImage,
                              width: 200, height: 200, fit: BoxFit.fill),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Center(
                            child: controller.selfieImage != null
                                ? Image.file(
                                    File(controller.selfieImage?.path ?? ""),
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
                              var image = await AppCommonFunctions()
                                  .getImage(ImageSource.gallery);
                              controller.selfieImage = image;
                              controller.update();
                            },
                            child: Image.asset(appImagesConst.cameraIcon,
                                width: 50, height: 50, fit: BoxFit.fill),
                          ),
                        )
                      ],
                    ),
                    CustomFieldWithHeader(
                      heading: "Pan Number",
                      hintText: "Enter Pan Number",
                      bottomMargin: 2,
                      keyboardType: TextInputType.name,
                      controller: panNumberController,
                    ),
                    // Text(
                    //   "Your Pan number is totally secure",
                    //   style: TextStyle(color: appColorsConst.grey, fontSize: 14),
                    // ),
                    const SizedBox(
                      height: 18,
                    ),
                    Text(
                      "Bank Account Details",
                      style: TextStyle(
                        color: appColorsConst.cBlack,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    CustomFieldWithHeader(
                      controller: bankNameController,
                      keyboardType: TextInputType.name,
                      heading: "Bank Name",
                      hintText: "Please Select",
                      suffixIcon: Icon(
                        Icons.keyboard_arrow_down_sharp,
                        color: appColorsConst.lightGrey,
                      ),
                    ),
                    CustomFieldWithHeader(
                      controller: branchNameController,
                      keyboardType: TextInputType.name,
                      heading: "Branch Name",
                      hintText: "Enter Branch Name",
                    ),
                    CustomFieldWithHeader(
                      heading: "Bank Account Number",
                      controller: bankAccountNoController,
                      hintText: "Enter Bank Account Number",
                    ),
                    CustomFieldWithHeader(
                      controller: ifscCodeController,
                      keyboardType: TextInputType.name,
                      heading: "IFSC Code",
                      hintText: "Enter IFSC Code",
                    ),
                    Text(
                      "Upload Checkbook/Passbook/Bank Statement (Front Page)",
                      style:
                          TextStyle(color: appColorsConst.cBlack, fontSize: 12),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    controller.bankProofImage == null
                        ? Button(
                            borderColor: appColorsConst.cBlue,
                            buttonColor: appColorsConst.cWhite,
                            onPressed: () async {
                              var image = await AppCommonFunctions()
                                  .getImage(ImageSource.gallery);
                              controller.bankProofImage = image;
                              controller.update();
                            },
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(appImagesConst.uploadIcon,
                                    width: 15, height: 15, fit: BoxFit.fill),
                                Text(
                                  "Upload",
                                  style: TextStyle(
                                      color: appColorsConst.cBlue,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          )
                        : Image.file(
                            File(
                              controller.selfieImage?.path ?? "",
                            ),
                            height: 150,
                          ),
                    const SizedBox(
                      height: 18,
                    ),
                    Button(
                      onPressed: () {
                        controller.panNumber = panNumberController.text.trim();
                        controller.bankName = bankNameController.text.trim();
                        controller.branchName =
                            branchNameController.text.trim();
                        controller.bankAccountNo =
                            bankAccountNoController.text.trim();
                        controller.ifscCode = ifscCodeController.text.trim();
                        controller.registerUser();
                        Get.toNamed(appRouteNamesConst.bottomNavBar);
                      },
                      title: "Submit",
                      width: double.infinity,
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
