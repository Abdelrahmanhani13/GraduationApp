import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
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
                  'We\'re excited to have you back, can\'t wait to\n see what you\'ve been up to since you last \n logged in.',
            ),
          ],
        ),
      ),
    );
  }
}
