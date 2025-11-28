import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key, required this.title,  this.fontWeight, this.fontSize,
  });
  final String title;
  final FontWeight? fontWeight;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: () {},
        child: Text(
          title,
          style: GoogleFonts.alexandria(
            fontWeight: fontWeight,
            fontSize: fontSize,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}