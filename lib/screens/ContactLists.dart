import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pingchat/components/custom_back_arrow_icon.dart';
import 'package:pingchat/components/custom_container_button.dart';
import 'package:pingchat/components/custom_ping_logo.dart';
import 'package:pingchat/utils/const.dart';
import 'EnableNotificationsScreen.dart';

class ContactLists extends StatelessWidget {
  const ContactLists({Key? key}) : super(key: key);

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
                      child: Text(
                        'Skip',
                        style: TextStyle(color: kGreyColor, fontSize: 18.0),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32.0),
                child: Text(
                  'Contact Lists',
                  style: TextStyle(
                    fontSize: 24.0,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text('You can find friends from your contact'),
              Text('lists to connected'),
              SizedBox(
                height: 40,
              ),
              // Stack(children: [
              //   Padding(
              //     padding: const EdgeInsets.only(top: 60.0),
              //     child: CustomPingLogoWidget(
              //       picture: SvgPicture.asset(
              //         kContactBgPicture,
              //       ),
              //       width: 297.0,
              //       height: 223.55,
              //     ),
              //   ),
              //   CustomPingLogoWidget(
              //     picture: SvgPicture.asset(
              //       kContactListsPicture,
              //     ),
              //     width: 176.01,
              //     height: 360.7,
              //   ),
              // ]),
              Image.asset('images/contactlist.png'),
              // SvgPicture.asset(kContactListsPictureSet),
              SizedBox(
                height: 100,
              ),
              CustomContainerButton(
                  height: 60,
                  width: 360,
                  text: 'Access To Contact List',
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => EnableNotification(),
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
