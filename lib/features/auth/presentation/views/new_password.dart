import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:graduation_project/features/auth/presentation/widgets/custom_auth_body_text.dart';
import 'package:graduation_project/features/auth/presentation/widgets/custom_auth_button.dart';
import 'package:graduation_project/features/auth/presentation/widgets/custom_auth_title_text.dart';
import 'package:graduation_project/features/auth/presentation/widgets/custom_text_field_title.dart';
import 'package:graduation_project/features/auth/presentation/widgets/custom_text_form_field.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Gap(30),
            CustomAuthTitleText(title: 'New Password'),
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
                    const CustomTextFieldTitle(
                      title: 'Enter your new password',
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: CustomTextFormField(
                        keyboardType: TextInputType.name,
                      ),
                    ),
                    Gap(30),
                    CustomAuthButton(
                      title: 'Reset Password',
                      color: Colors.black,
                    ),
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
