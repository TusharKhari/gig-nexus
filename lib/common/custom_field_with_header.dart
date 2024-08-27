import 'package:flutter/material.dart';

import '../utils/constants/app_constants.dart';
import 'customTextField.dart';

class CustomFieldWithHeader extends StatelessWidget {
  String? heading;
  String? hintText;
  Widget? suffixIcon;
  double? bottomMargin;
  CustomFieldWithHeader(
      {super.key, this.heading, this.hintText, this.suffixIcon, this.bottomMargin});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              this.heading ?? " ",
              style: TextStyle(color: appColorsConst.cBlack, fontSize: 16),
            ),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        CustomTextField(
          suffixIcon: this.suffixIcon,
          // errorText: "Wrong Phone Number",
          keyboardType: TextInputType.number,
          hintText: this.hintText,
        ),
         SizedBox(
          height: bottomMargin ?? 20,
        ),
      ],
    );
  }
}
