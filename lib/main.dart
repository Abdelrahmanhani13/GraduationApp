import 'package:flutter/material.dart';
import 'package:graduation_project/features/auth/presentation/views/forgot_password.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Graduation Project',
      theme: ThemeData(
      ),
      home:ForgotPassword(),
    );
  }
}

