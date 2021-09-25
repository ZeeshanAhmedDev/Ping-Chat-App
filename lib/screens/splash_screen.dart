import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:pingchat/utils/const.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Home Screen.dart';
import 'LoginScreen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splash: SvgPicture.asset('images/logo.svg'),
        splashIconSize: kSplashIconSize,
        centered: true,
        backgroundColor: kWhiteColourWhiteColor,
        nextScreen: LoginScreen(),
        splashTransition: SplashTransition.fadeTransition,
      ),
    );
  }
}
