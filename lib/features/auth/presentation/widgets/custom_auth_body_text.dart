import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAuthBodyText extends StatelessWidget {
  const CustomAuthBodyText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          text,
          style: GoogleFonts.inter(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xff757575),
          ),
        ),
      ),
    );
  }
}
