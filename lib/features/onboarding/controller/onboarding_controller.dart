import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:get/get.dart';
import 'package:gig_nexus/models/city_state_modal.dart';
import 'package:gig_nexus/models/professions_model.dart';
import 'package:gig_nexus/utils/constants/app_json_constant.dart';
import 'package:image_picker/image_picker.dart';

class OnboardingController extends GetxController {
  String? fullName;
  String? gender;
  String? dateOfBirth;
  String? profession;
  String? moreAboutProfession;
  String? addressLine;
  String? city;
  String? state;
  String? pinCode;
  XFile? profileImage;
  ProfessionsModel? selectedProfession;
  CityStateModal? selectedState;
  List<ProfessionsModel> professionsList = [];
  List<CityStateModal> cityStateList = [];

  String? panNumber;
  String? bankName;
  String? branchName;
  String? bankAccountNo;
  String? ifscCode;
  XFile? selfieImage;
  XFile? bankProofImage;

  void getProfessions() {
    try {
      professionsList = professionListJson
          .map(
            (e) => ProfessionsModel.fromJson(e),
          )
          .toList();
    } catch (e) {
      Get.snackbar("Error", "$e");
    }
  }

  void getCityList() {
    try {
      cityStateList = stateCityJson
          .map(
            (e) => CityStateModal.fromJson(e),
          )
          .toList();
    } catch (e) {
      Get.snackbar("Error", "$e");
    }
  }

  Future<void> registerUser() async {
    try {
      var data = {
        "name": fullName,
        "gender": gender,
        "dob": dateOfBirth,
        "profession": profession,
        "moreAboutProfession": moreAboutProfession,
        "addressLine": addressLine,
        "city": city,
        "state": state,
        "pinCode": pinCode,
        "panNo": panNumber,
        "bankName": bankName,
        "branchName": branchName,
        "bankAccountNo": bankAccountNo,
        "ifscCode": ifscCode
      };
      log("messagee ---> $data");
      CollectionReference users =
          FirebaseFirestore.instance.collection('users');

      await users.add(data);
      log("message added");
    } catch (e) {
      Get.snackbar("Error", "$e");
    }
  }
}
