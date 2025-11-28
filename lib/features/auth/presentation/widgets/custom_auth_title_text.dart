import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAuthTitleText extends StatelessWidget {
  const CustomAuthTitleText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'Welcome Back',
          style: GoogleFonts.inter(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: Color(0xff247CFF),
          ),
        ),
      ),
    );
  }
}
