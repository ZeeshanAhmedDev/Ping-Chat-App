import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pingchat/components/custom_container_button.dart';
import 'package:pingchat/components/custom_ping_logo.dart';
import 'package:pingchat/components/custom_text_field.dart';
import 'package:pingchat/utils/Controller/controller_textfeild.dart';
import 'package:pingchat/utils/const.dart';
import 'ForgetPassword.dart';
import 'ForgetPasswordWithScreen.dart';
import 'Home Screen.dart';
import 'ProfileDetails.dart';
import 'SignUp.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isButtonHasOpacityZero = true;

  @override
  void initState() {
    // checkTextFiled() {
    //   if ((FieldController.controllerUser.text.trim() == '') &&
    //       FieldController.controllerUser.text.trim() == '') ;
    // }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomPingLogoWidget(
                width: 140.0,
                height: 150.0,
                picture: SvgPicture.asset(kSvgPingPicture),
              ),
              Text(
                'Sign In',
                style: TextStyle(
                  fontSize: 27,
                  fontFamily: 'Lato-Bold.ttf',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Sign in into your account',
                style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'Lato-Thin.ttf',
                    wordSpacing: 1.0),
              ),
              Text(
                'to continue',
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
              CustomTextField(
                controller: FieldController.controllerPassword,
                writeCharacterToHide: '*',
                hideOrShow: true,
                rightIcon: Icons.visibility_off_outlined,
                rightIcon1: Icons.visibility_outlined,
                labelText: 'Password',
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4.0, left: 15),
                    child: Icon(
                      Icons.lock_outline_rounded,
                      size: 20,
                      color: Color(0xFF7F4CBF),
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => ForgetPasswordScreen(),
                      ),
                    ),
                    child: Text(
                      'Forget Password?',
                      style: TextStyle(
                        color: Color(0xFF7F4CBF),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              CustomContainerButton(
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                },
                height: 60.0,
                width: 360.0,
                text: 'Sign In',
              ),
              SizedBox(
                height: 19,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account? ',
                    style: TextStyle(fontSize: 14),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => SignUpScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Sign Up',
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
