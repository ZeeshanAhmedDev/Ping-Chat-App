import 'package:flutter/material.dart';
import 'package:pingchat/utils/const.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ping',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        primaryColor: kWhiteColourWhiteColor,
        accentColor: Color(0xFF7F4CBF),
        scaffoldBackgroundColor: kWhiteColourWhiteColor,
      ),
      home: SplashScreen(),
    );
  }
}
