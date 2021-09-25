import 'package:flutter/material.dart';
import 'package:pingchat/utils/const.dart';

class CustomTextField extends StatefulWidget {
  final String labelText;
  final IconData? rightIcon;
  final IconData? rightIcon1;
  final bool hideOrShow;
  final dynamic writeCharacterToHide;
  final dynamic controller;

  CustomTextField({
    required this.labelText,
    required this.rightIcon,
    required this.rightIcon1,
    required this.hideOrShow,
    required this.writeCharacterToHide,
    required this.controller,
  });

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool passwordsShow = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextFormField(
        obscureText: passwordsShow,
        obscuringCharacter: widget.writeCharacterToHide,
        cursorColor: kCustomContainerColor,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                passwordsShow = !passwordsShow;
              });
            },
            icon: passwordsShow
                ? Icon(widget.rightIcon)
                : Icon(widget.rightIcon1),
          ),
          alignLabelWithHint: true,
          contentPadding: EdgeInsets.all(20),
          // focusColor: kCustomContainerColor,
          labelText: widget.labelText,
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
    );
  }
}
