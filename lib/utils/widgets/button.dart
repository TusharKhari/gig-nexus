import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gig_nexus/utils/constants/app_constants.dart';
import 'package:gig_nexus/utils/widgets/label.dart';

class Button extends StatelessWidget {
  final String? title;
  final VoidCallback? onPressed;
  final Color? buttonColor;
  final Color? textColor;
  final double? height;
  final double? width;
  final Color? borderColor;
  final Widget? child;
  final bool? bold;
  final Widget? icon;
  final double? fontSize;

  const Button({
    Key? key,
    this.title,
    this.fontSize,
    this.onPressed,
    this.buttonColor,
    this.textColor = Colors.white,
    this.height,
    this.width,
    this.borderColor,
    this.child,
    this.bold,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 58,
      width: width ?? 150,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        color: appColorsConst.cBlue,
        borderRadius: BorderRadius.all(Radius.circular(14)),
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          side: MaterialStateProperty.resolveWith(
            (states) => borderColor != null
                ? BorderSide(width: 1, color: borderColor!)
                : null,
          ),
          elevation: MaterialStateProperty.resolveWith((states) => 0),
          backgroundColor: MaterialStateColor.resolveWith(
            (states) => buttonColor ?? appColorsConst.cBlue,
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14.0),
            ),
          ),
        ),
        onPressed: onPressed,
        child: child ??
            Label(
              title ?? "",
              fontsize: fontSize ?? 20,
              color: textColor ?? appColorsConst.cWhite,
              bold: bold ?? false,
            ),
      ),
    );
  }
}
