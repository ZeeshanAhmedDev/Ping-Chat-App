import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pingchat/utils/const.dart';

class CustomPingLogoWidget extends StatelessWidget {
  final double? width;
  final double? height;
  final Widget picture;

  CustomPingLogoWidget({
    required this.width,
    required this.height,
    required this.picture,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(20),
        width: width,
        height: height,
        child: picture,

        // SvgPicture.asset(kSvgPicture),
      ),
    );
  }
}
