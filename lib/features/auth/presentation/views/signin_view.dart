import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graduation_project/features/auth/presentation/widgets/custom_auth_body_text.dart';
import 'package:graduation_project/features/auth/presentation/widgets/custom_auth_title_text.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Gap(50),
            CustomAuthTitleText(title: 'Welcome Back'),
            Gap(10),
            CustomAuthBodyText(
              text:
                  'We\'re excited to have you back,can\'t wait to\n see what you\'ve been up to since you last\n logged in.',
            ),
            Gap(30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                height: 576,
                width: 375,
                decoration: BoxDecoration(
                  color: Color(0xffEEF2FF),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Column(
                  children: [
                    Text(
                      'Log in',
                      style: GoogleFonts.alexandria(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    Gap(10),
                    CustomTextFieldTitle()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

