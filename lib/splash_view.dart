import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/image1.png'),
          Center(
            child: Image.asset(
              'assets/images/Ellipse 13.png',
              height: 388,
              width: 310,
            ),
          ),
          Center(
            child: Image.asset( 
              'assets/images/image2.png',
              height: 174,
              width: 260,
            ),
          ),
        ],
      ),
    );
  }
}
