import 'package:flutter/material.dart';

class CustomBackArrowIcon extends StatelessWidget {
  const CustomBackArrowIcon({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 22.0, left: 25.0),
      child: InkWell(
        onTap: () => Navigator.pop(context),
        child: Icon(
          Icons.arrow_back_ios_sharp,
          size: 20,
          color: Colors.black54,
        ),
      ),
    );
  }
}
