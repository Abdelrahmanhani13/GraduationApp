import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFieldTitle extends StatelessWidget {
  const CustomTextFieldTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text('Email',style: GoogleFonts.aBeeZee(
          fontWeight: FontWeight.w400,
          fontSize: 12,
          color: Colors.black,
        ),),
      ),
    );
  }
}
