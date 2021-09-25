import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pingchat/components/custom_back_arrow_icon.dart';
import 'package:pingchat/components/custom_container_button.dart';
import 'package:pingchat/components/custom_ping_logo.dart';
import 'package:pingchat/utils/const.dart';

import 'Home Screen.dart';

class EnableWifiAndBluetoothScreen extends StatelessWidget {
  const EnableWifiAndBluetoothScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomBackArrowIcon(),
                  Padding(
                      padding: const EdgeInsets.only(top: 22.0, right: 25.0),
                      child: GestureDetector(
                          child: Text(
                            'Skip',
                            style: TextStyle(color: kGreyColor, fontSize: 18.0),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            );
                          })),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32.0),
                child: Text(
                  'Enable wifi, and Bluetooth',
                  style: TextStyle(
                    fontSize: 24.0,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text('Allow your phone to connect with people'),
              Text('around you.'),
              SizedBox(
                height: 40,
              ),
              Stack(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                  child: CustomPingLogoWidget(
                    picture: SvgPicture.asset(
                      kContactBgPicture,
                    ),
                    width: 297.0,
                    height: 223.55,
                  ),
                ),
                CustomPingLogoWidget(
                  picture: SvgPicture.asset(
                    kMobileFramePicture,
                  ),
                  width: 176.01,
                  height: 360.7,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 56.0, left: 170.0),
                  child: Text(
                    'Bluetooth',
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(100.0),
                  child: CustomPingLogoWidget(
                    picture: SvgPicture.asset(
                      kBluetoothPicture,
                    ),
                    width: 67.51,
                    height: 147.31,
                  ),
                ),
              ]),
              SizedBox(
                height: 100,
              ),
              CustomContainerButton(
                  height: 60,
                  width: 360,
                  text: 'Turn On',
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
