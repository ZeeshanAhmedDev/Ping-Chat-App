import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:pingchat/utils/const.dart';

class CustomerCircularPinCode extends StatelessWidget {
  const CustomerCircularPinCode({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 30,
        left: 30,
      ),
      child: PinCodeTextField(
        length: 4,
        onChanged: (value) => null,
        appContext: context,
        animationType: AnimationType.fade,
        pinTheme: PinTheme(
          selectedFillColor: kCustomContainerColor,
          borderWidth: 1,
          inactiveColor: Colors.black,
          activeColor: kCustomContainerColor,
          selectedColor: kCustomContainerColor,
          shape: PinCodeFieldShape.circle,
          borderRadius: BorderRadius.circular(5),
          fieldHeight: 65,
          fieldWidth: 65,
          activeFillColor: kCustomContainerColor,
        ),
      ),
    );
  }
}
