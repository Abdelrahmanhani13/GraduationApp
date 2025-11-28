import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key, required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Align(
        alignment: Alignment.centerRight,
        child: GestureDetector(
          onTap: () {},
          child: Text(
            title,
            style: GoogleFonts.alexandria(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}