import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pingchat/components/custom_back_arrow_icon.dart';
import 'package:pingchat/components/custom_container_button.dart';
import 'package:pingchat/components/custom_ping_logo.dart';
import 'package:pingchat/components/custom_text_field.dart';
import 'package:pingchat/utils/const.dart';

import 'ProfileScreen.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

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
                'Reset Password',
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
              // CustomTextField(
              //   writeCharacterToHide: '2',
              //   hideOrShow: false,
              //   labelText: 'Email',
              //   rightIcon: null,
              // ),

              CustomTextField(
                controller: null,
                hideOrShow: true,
                labelText: 'Password',
                rightIcon: Icons.visibility_off_outlined,
                rightIcon1: Icons.visibility_outlined,
                writeCharacterToHide: '*',
              ),
              CustomTextField(
                controller: null,
                hideOrShow: true,
                labelText: 'Confirm-Password',
                rightIcon: Icons.visibility_off_outlined,
                rightIcon1: Icons.visibility_outlined,
                writeCharacterToHide: '*',
              ),

              SizedBox(
                height: 30,
              ),
              CustomContainerButton(
                onTap: () => Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => ProfileScreen(),
                  ),
                ),
                height: 60.0,
                width: 360.0,
                text: 'Continue',
              ),
              SizedBox(
                height: 19,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
