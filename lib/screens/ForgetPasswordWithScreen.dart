import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pingchat/components/custom_back_arrow_icon.dart';
import 'package:pingchat/components/custom_container_button.dart';
import 'package:pingchat/components/custom_ping_logo.dart';
import 'package:pingchat/components/custom_text_field.dart';
import 'package:pingchat/screens/LoginScreen.dart';
import 'package:pingchat/utils/const.dart';

import 'PincodeScreen.dart';
import 'ProfileDetails.dart';
import 'SignUp.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, bottom: 110.0),
                    child: CustomBackArrowIcon(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 60.0),
                    child: CustomPingLogoWidget(
                      width: 140.0,
                      height: 150.0,
                      picture: SvgPicture.asset(kSvgPingPicture),
                    ),
                  ),
                ],
              ),
              Text(
                'Forget Password',
                style: TextStyle(
                  fontSize: 27,
                  fontFamily: 'Lato-Bold.ttf',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Enter your new password',
                style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'Lato-Thin.ttf',
                    wordSpacing: 1.0),
              ),
              Text(
                'and login',
                style: TextStyle(
                    fontFamily: 'Regular', fontSize: 17, wordSpacing: 1.0),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  cursorColor: kCustomContainerColor,
                  decoration: InputDecoration(
                    alignLabelWithHint: true,
                    contentPadding: EdgeInsets.all(20),
                    // focusColor: kCustomContainerColor,
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      height: 2,
                      color: Colors.black,
                      backgroundColor: Colors.transparent,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      // fontFamily: 'Lato-Bold.ttf',
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: kCustomContainerColor,
                      ),
                    ),
                  ),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     FloatingActionButton(
              //       onPressed: () {},
              //     ),
              //     FloatingActionButton(
              //       onPressed: () {},
              //     ),
              //     FloatingActionButton(
              //       onPressed: () {},
              //     ),
              //     FloatingActionButton(
              //       onPressed: () {},
              //     ),
              //   ],
              // ),

              SizedBox(
                height: 30,
              ),
              CustomContainerButton(
                onTap: () => Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => PinCodeScreen(),
                  ),
                ),
                height: 60.0,
                width: 360.0,
                text: 'Continue',
              ),
              SizedBox(
                height: 19,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account? ',
                    style: TextStyle(fontSize: 14),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationThickness: 2,
                          fontSize: 14,
                          color: kCustomContainerColor,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
