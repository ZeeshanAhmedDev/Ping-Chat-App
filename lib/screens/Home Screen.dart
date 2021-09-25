import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pingchat/components/custom_ping_logo.dart';
import 'package:pingchat/components/custom_post_container.dart';
import 'package:pingchat/models/post_data_model.dart';
import 'package:pingchat/screens/NewScreen/NotificationScreen.dart';
import 'package:pingchat/screens/NewScreen/ProfileScreen.dart';
import 'package:pingchat/screens/NewScreen/UserProfileScreens.dart';
import 'package:pingchat/screens/user_notifications.dart';
import 'package:pingchat/utils/const.dart';
import 'package:badges/badges.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 25.0),
          child: CustomPingLogoWidget(
            width: 80.84,
            height: 80.2,
            picture: SvgPicture.asset(kSvgPingPicture),
          ),
        ),
        elevation: 0.0,
        leading: Center(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
            ),
            child: GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  CupertinoPageRoute(
                    // builder: (context) => ProfileScreen(),
                    builder: (context) => UserProfileScreens(),
                  )),
              child: CircleAvatar(
                radius: 22,
                backgroundColor: Colors.black54,
                backgroundImage: NetworkImage(
                  'https://www.adcchesterton.com/assets/images/switch-missing.png',
                  scale: 22,
                ),
              ),
            ),
          ),
        ),
        actions: [
          CustomPingLogoWidget(
            width: 19.94,
            height: 20.94,
            picture: SvgPicture.asset(kActonSearchIcon),
          ),
          GestureDetector(
            onTap: () => Navigator.push(context, CupertinoPageRoute(
              builder: (context) {
                return NotificationScreen();
              },
            )),
            child: CustomPingLogoWidget(
              width: 16.5,
              height: 19.5,
              picture: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => UserNotifications(),
                      ));
                },
                child: Row(
                  children: [
                    Badge(
                      animationType: BadgeAnimationType.scale,
                      // padding: EdgeInsets.fromLTRB(0, myHeight * 0.01, 12, 0),
                      position: BadgePosition.topEnd(end: -3, top: -2),
                      child: SvgPicture.asset(kActonBellIcon),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Divider(
            height: 8,
            thickness: 8,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 85,
            child: ListTile(
              leading: CircleAvatar(
                radius: 22,
                backgroundColor: Colors.black54,
                backgroundImage: NetworkImage(
                  'https://www.adcchesterton.com/assets/images/switch-missing.png',
                  scale: 22,
                ),
              ),
              title: TextField(
                style: TextStyle(),
                decoration: InputDecoration(
                  hintText: 'Share Something',
                ),
                cursorColor: kCustomContainerColor,
              ),
            ),
          ),
          Divider(
            height: 8,
            thickness: 8,
          ),
          Expanded(
            child: ListView.separated(
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(
                      height: 8,
                      thickness: 8,
                    ),
                itemCount: postItemsData.length,
                itemBuilder: (BuildContext context, int index) {
                  return CustomPostContainer(
                    name: postItemsData[index].name,
                    time: postItemsData[index].time,
                    ProfileImage: postItemsData[index].profileImage,
                    postImage: postItemsData[index].postImage,
                    discription: postItemsData[index].discription,
                  );
                }),
          )
        ],
      ),
    );
  }
}
