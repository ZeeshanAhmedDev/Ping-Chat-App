import 'package:flutter/material.dart';
import 'package:pingchat/utils/const.dart';

class CustomContainerButton extends StatelessWidget {
  final double? height;
  final double? width;
  final String? text;
  final VoidCallback? onTap;

  CustomContainerButton({
    required this.height,
    required this.width,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: width,
        height: height,
        child: Text(
          text!,
          style: kContainerTextStyle,
        ),
        decoration: BoxDecoration(
            color: kCustomContainerColor,
            borderRadius: BorderRadius.circular(30)),
      ),
    );
  }
}
