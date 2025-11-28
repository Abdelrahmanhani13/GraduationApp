import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:graduation_project/features/auth/presentation/widgets/custom_auth_body_text.dart';
import 'package:graduation_project/features/auth/presentation/widgets/custom_auth_button.dart';
import 'package:graduation_project/features/auth/presentation/widgets/custom_auth_title_text.dart';
import 'package:graduation_project/features/auth/presentation/widgets/custom_text_field_title.dart';
import 'package:graduation_project/features/auth/presentation/widgets/custom_text_form_field.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Gap(30),
            CustomAuthTitleText(title: 'Forgot Password'),
            Gap(10),
            CustomAuthBodyText(
              text:
                  'At our app, we take the security of your information seriously.',
            ),
            Gap(70),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xffEEF2FF),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Column(
                  children: [
                    Gap(30),
                    const CustomTextFieldTitle(title: 'Enter your email'),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: CustomTextFormField(
                        keyboardType: TextInputType.name,
                      ),
                    ),
                    Gap(30),
                    CustomAuthButton(title: 'Send the Code', color: Color(0xffFF4747)),
                    Gap(50),
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
