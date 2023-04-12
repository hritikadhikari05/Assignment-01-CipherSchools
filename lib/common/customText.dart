import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  CustomText(
      {super.key, this.text, this.fontSize, this.color, this.fontWeight});
  String? text;
  double? fontSize;
  final color;
  final fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? "",
      style: GoogleFonts.openSans(
        fontSize: fontSize ?? 14,
        color: color ?? Theme.of(context).colorScheme.secondary,
        fontWeight: fontWeight ?? FontWeight.normal,
      ),
    );
  }
}
