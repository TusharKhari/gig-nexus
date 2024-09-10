import 'package:flutter/material.dart';
import 'package:gig_nexus/utils/constants/app_constants.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? labelText;
  final String? hintText;
  final TextInputType? keyboardType;
  final int? maxLength;
  final TextInputAction? textInputAction;
  final FormFieldValidator<String>? validator;
  final bool? obscureText;
  final bool? autoValidate;
  final TextStyle? style;
  final Color? cursorColor;
  final Color? fillColor;
  final Color? borderColor;
  final double? borderRadius;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? errorText;
  final bool? enabled;

  const CustomTextField(
      {super.key,
      this.controller,
      this.errorText,
      this.suffixIcon,
      this.prefixIcon,
      this.labelText,
      this.hintText,
      this.keyboardType,
      this.maxLength,
      this.textInputAction,
      this.validator,
      this.obscureText = false,
      this.autoValidate = true,
      this.style,
      this.cursorColor,
      this.fillColor,
      this.borderColor,
      this.borderRadius,
      this.enabled});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: style ?? const TextStyle(color: Colors.black),
      cursorColor: cursorColor ?? appColorsConst.cB4BAC2,
      keyboardType: keyboardType ?? TextInputType.text,
      obscureText: obscureText ?? false,
      maxLength: maxLength,
      textInputAction: textInputAction ?? TextInputAction.done,
      autovalidateMode: autoValidate == true
          ? AutovalidateMode.onUserInteraction
          : AutovalidateMode.disabled,
      validator: validator,
      enabled: this.enabled,
      decoration: InputDecoration(
          errorText: this.errorText,
          prefixIcon: this.prefixIcon,
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: borderColor ?? appColorsConst.cB4BAC2,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(borderRadius ?? 14),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: borderColor ?? appColorsConst.cB4BAC2,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(borderRadius ?? 14),
          ),
          labelStyle: TextStyle(color: appColorsConst.cB4BAC2),
          floatingLabelBehavior: FloatingLabelBehavior.never,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: borderColor ?? appColorsConst.cB4BAC2,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(borderRadius ?? 14),
          ),
          hintStyle: TextStyle(
              color: appColorsConst.cB4BAC2, fontWeight: FontWeight.bold),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: borderColor ?? appColorsConst.cB4BAC2,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(borderRadius ?? 14),
          ),
          filled: true,
          fillColor: fillColor ?? appColorsConst.cWhite,
          labelText: labelText,
          hintText: hintText,
          suffixIcon: this.suffixIcon),
    );
  }
}
