import 'package:flutter/material.dart';

import '../utils/constants/app_constants.dart';
import 'customTextField.dart';

class CustomFieldWithHeader extends StatelessWidget {
  String? heading;
  String? hintText;
  Widget? suffixIcon;
  double? bottomMargin;
  bool? isEnabled;
  TextInputType? keyboardType;
  TextEditingController? controller;
  CustomFieldWithHeader(
      {super.key,
      this.heading,
      this.hintText,
      this.suffixIcon,
      this.bottomMargin,
      this.controller,
      this.isEnabled,
      this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              heading ?? " ",
              style: TextStyle(color:  appColorsConst.c1E242C, fontSize: 16),
            ),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        CustomTextField(
          controller: controller,
          suffixIcon: suffixIcon,
          enabled: isEnabled,
          // errorText: "Wrong Phone Number",
          keyboardType: keyboardType ?? TextInputType.number,
          hintText: hintText,
        ),
        SizedBox(
          height: bottomMargin ?? 20,
        ),
      ],
    );
  }
}
