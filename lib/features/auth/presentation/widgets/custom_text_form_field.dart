import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.keyboardType,
    this.suffixIcon,
    this.controller,
    this.obscureText = false,
    this.onSaved, this.prefixIcon,
  });

  final TextInputType keyboardType;
  final Widget? suffixIcon;
  final IconData? prefixIcon;
  final TextEditingController? controller;
  final bool obscureText;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Color(0xffEEF2FF),
      onSaved: onSaved,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'the field is required';
        }
        return null;
      },
      keyboardType: keyboardType,
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon != null ? Icon(prefixIcon, color:Colors.black) : null,
        // contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        isDense: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: const BorderSide(color: Color(0xFFE6E9E9), width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: const BorderSide(color: Color(0xFFE6E9E9), width: 1),
        ),
        fillColor: const Color(0XFFF9FAFA),
        filled: true,
      ),
    );
  }
}