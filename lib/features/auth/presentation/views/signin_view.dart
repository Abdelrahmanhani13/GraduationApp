import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graduation_project/core/widgets/custom_text.dart';
import 'package:graduation_project/features/auth/presentation/views/signup_view.dart';
import 'package:graduation_project/features/auth/presentation/widgets/custom_auth_body_text.dart';
import 'package:graduation_project/features/auth/presentation/widgets/custom_auth_button.dart';
import 'package:graduation_project/features/auth/presentation/widgets/custom_auth_title_text.dart';
import 'package:graduation_project/features/auth/presentation/widgets/custom_text_field_title.dart';
import 'package:graduation_project/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:graduation_project/features/auth/presentation/widgets/or_dividor.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            children: [
              const Gap(50),
              const CustomAuthTitleText(title: 'Welcome Back'),
              const Gap(10),
              const CustomAuthBodyText(
                text:
                    'We\'re excited to have you back,can\'t wait to\n see what you\'ve been up to since you last\n logged in.',
              ),
              const Gap(30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  width: 375,
                  decoration: BoxDecoration(
                    color: const Color(0xffEEF2FF),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
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
                        const Gap(10),
                        const CustomTextFieldTitle(title: 'Email'),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: CustomTextFormField(
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),
                        const CustomTextFieldTitle(title: 'password'),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: CustomTextFormField(
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: true,
                            suffixIcon: Icon(Icons.visibility_off),
                          ),
                        ),
                        const Gap(30),
                        const CustomAuthButton(
                          title: 'Sign In',
                          color: Color(0xffFF4747),
                        ),
                        const Gap(10),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: CustomText(title: 'Forgot your password?'),
                        ),
                        const Gap(50),
                        const OrDivider(),
                        const Gap(30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/Login alternative.png'),
                            Gap(40),
                            Image.asset('assets/images/Logo.png'),
                          ],
                        ),
                        const Gap(40),

                        // الجزء اللي كان فيه المشكلة - حليناه بـ Builder
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const CustomText(
                              title: 'Don\'t have an account?',
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                            const Gap(5),
                            Builder(
                              builder: (context) => InkWell(
                                onTap: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (_) => const SignupView(),
                                  ),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: CustomText(
                                    title: 'Sign up',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Gap(20),
            ],
          ),
        ),
      ),
    );
  }
}
