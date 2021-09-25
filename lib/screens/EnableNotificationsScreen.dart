import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pingchat/components/custom_back_arrow_icon.dart';
import 'package:pingchat/components/custom_container_button.dart';
import 'package:pingchat/components/custom_ping_logo.dart';
import 'package:pingchat/utils/const.dart';
import 'EnableWifiAndBluetoothScreen.dart';

class EnableNotification extends StatelessWidget {
  const EnableNotification({Key? key}) : super(key: key);

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
                      onTap: () => Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => EnableNotification(),
                        ),
                      ),
                      child: GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) =>
                                EnableWifiAndBluetoothScreen(),
                          ),
                        ),
                        child: Text(
                          'Skip',
                          style: TextStyle(color: kGreyColor, fontSize: 18.0),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32.0),
                child: Text(
                  'Enable Notifications',
                  style: TextStyle(
                    fontSize: 24.0,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text('Get Push notifications'),
              SizedBox(
                height: 40,
              ),
              SvgPicture.asset(kEnableNotificationSet),
              // Stack(
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.only(top: 60.0),
              //       child: CustomPingLogoWidget(
              //         picture: SvgPicture.asset(
              //           kContactBgPicture,
              //         ),
              //         width: 297.0,
              //         height: 223.55,
              //       ),
              //     ),
              //     CustomPingLogoWidget(
              //       picture: SvgPicture.asset(
              //         kMobileFramePicture,
              //       ),
              //       width: 176.01,
              //       height: 360.7,
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.only(top: 56.0, left: 155.0),
              //       child: Text(
              //         'Access Controls',
              //         style:
              //             TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
              //       ),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.only(right: 50.0),
              //       child: CustomPingLogoWidget(
              //         picture: SvgPicture.asset(
              //           kNotificationsBellPicture,
              //         ),
              //         width: 176.01,
              //         height: 360.7,
              //       ),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.only(top: 260, left: 80.0),
              //       child: CustomPingLogoWidget(
              //         width: 40.97,
              //         height: 50.98,
              //         picture: SvgPicture.asset(kSvgPingPicture),
              //       ),
              //     ),
              //   ],
              // ),
              SizedBox(
                height: 100,
              ),
              CustomContainerButton(
                height: 60,
                width: 360,
                text: 'Yes, Notify Me',
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => EnableWifiAndBluetoothScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
