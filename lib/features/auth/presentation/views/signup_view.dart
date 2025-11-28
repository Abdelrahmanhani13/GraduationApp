import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graduation_project/core/widgets/custom_text.dart';
import 'package:graduation_project/features/auth/presentation/widgets/custom_auth_body_text.dart';
import 'package:graduation_project/features/auth/presentation/widgets/custom_auth_button.dart';
import 'package:graduation_project/features/auth/presentation/widgets/custom_auth_title_text.dart';
import 'package:graduation_project/features/auth/presentation/widgets/custom_text_field_title.dart';
import 'package:graduation_project/features/auth/presentation/widgets/custom_text_form_field.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

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
              const CustomAuthTitleText(title: 'Create Account'),
              const Gap(10),
              const CustomAuthBodyText(
                text:
                    'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
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
                          'Sign up',
                          style: GoogleFonts.alexandria(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        const Gap(10),

                        const CustomTextFieldTitle(title: 'Full Name'),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: CustomTextFormField(
                            keyboardType: TextInputType.name,
                          ),
                        ),

                        const CustomTextFieldTitle(title: 'Email'),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: CustomTextFormField(
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),

                        const CustomTextFieldTitle(title: 'Birth Date'),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: CustomTextFormField(
                            keyboardType: TextInputType.text,
                          ),
                        ),

                        const CustomTextFieldTitle(title: 'Password'),
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
                          
                          title: 'Create Account',
                          color: Color(0xff1820FF),
                        ),


                        const Gap(50),

      

                        // Have an account? Login
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const CustomText(
                              title: 'Have an account already?',
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                            const Gap(5),
                            InkWell(
                              onTap: () => Navigator.of(context).pop(),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: CustomText(
                                  title: 'Login',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
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