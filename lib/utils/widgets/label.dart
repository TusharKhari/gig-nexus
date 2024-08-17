import 'package:flutter/material.dart';

enum Size { small, medium, large, xlarge }

class Label extends StatelessWidget {
  final String text;
  final bool bold;
  final Size? size;
  final Color color;
  final int maxLine;
  final double? letterSpacing;
  final TextAlign textAlign;
  final double? fontsize;

  const Label(
    this.text, {
    Key? key,
    this.fontsize,
    this.bold = false,
    this.size,
    this.color = Colors.black,
    this.maxLine = 1,
    this.letterSpacing,
    this.textAlign = TextAlign.justify,
  }) : super(key: key);

  double? getFontSize(context) {
    switch (size) {
      case Size.small:
        return Theme.of(context).textTheme.bodySmall!.fontSize;

      case Size.medium:
        return Theme.of(context).textTheme.bodyMedium!.fontSize;

      case Size.large:
        return Theme.of(context).textTheme.bodyLarge!.fontSize;

      case Size.xlarge:
        return Theme.of(context).textTheme.titleLarge!.fontSize;

      default:
        return Theme.of(context).textTheme.bodyMedium!.fontSize;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: bold ? FontWeight.bold : null,
        fontSize: fontsize ?? getFontSize(context),
        letterSpacing: letterSpacing,
      ),
      overflow: TextOverflow.ellipsis,
      softWrap: true,
      maxLines: maxLine,
      textAlign: textAlign,
    );
  }
}
