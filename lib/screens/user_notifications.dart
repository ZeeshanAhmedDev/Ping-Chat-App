import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pingchat/models/UserNotificationsModel.dart';
import 'package:pingchat/utils/const.dart';
import 'package:simple_shadow/simple_shadow.dart';

import 'NewScreen/friends.dart';

class UserNotifications extends StatefulWidget {
  const UserNotifications({Key? key}) : super(key: key);

  @override
  _UserNotificationsState createState() => _UserNotificationsState();
}

class _UserNotificationsState extends State<UserNotifications> {
  List<String> userNotifications = [
    'Julian DaSilva likes your post',
    'Your password was reset',
    'Julian DaSilva sent you friend request',
  ];

  List<String> trailingTextList = [
    '1 hour Ago',
    '2 min ago',
    '1 hour Ago',
  ];

  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(myHeight * 0.1),
        child: AppBar(
          leading: Padding(
            padding: EdgeInsets.only(top: myHeight * 0.03),
            child: GestureDetector(
              // onTap: () => Navigator.pop(context),
              onTap: () => Navigator.pop(context),
              child: Icon(
                Icons.arrow_back_ios_outlined,
                size: 22,
                color: Color(0xFF6B6B6B),
              ),
            ),
          ),
          title: Padding(
            padding: EdgeInsets.only(top: myHeight * 0.03),
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Text(
                'Notifications',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(top: myHeight * 0.03),
              child: SvgPicture.asset(kTrashBoxActionButton),
            ),
            Padding(
              padding: EdgeInsets.all(myHeight * 0.03),
              child: Icon(
                Icons.more_vert_outlined,
                color: Color(0xFF6B6B6B),
                size: 30,
              ),
            ),
          ],
          backgroundColor: Color(0xFFF3F3F3),
        ),
      ),
      body: Container(
        height: myHeight,
        width: myWidth,
        // color: Colors.purple.shade50,
        child: Stack(
          children: [
            Positioned(
              top: myHeight * 0.04,
              left: myWidth * 0.1,
              child: Text(
                'Notifications',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
            Positioned(
              top: myHeight * 0.08,
              left: myWidth * 0.1,
              child: Text(
                'You have 2 new notifications',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Positioned(
              top: myHeight * 0.04,
              left: myWidth * 0.8,
              child: SimpleShadow(
                opacity: 0.5, // Default: 0.5
                color: Color(0xff47BC6161),
                offset: Offset(1, 3), // Default: Offset(2, 2)
                sigma: 6,
                child: SvgPicture.asset(kFilterOptionButton),
              ),
            ),
            Positioned(
              top: 100,
              child: Container(
                width: myWidth,
                height: myHeight / 4,
                // color: Colors.purpleAccent.shade100,
                child: ListView.separated(
                  itemCount: 3,
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(),
                  itemBuilder: (BuildContext context, int index) {
                    return Stack(children: [
                      InkWell(
                        child: ListTile(
                          title: Text(userNotifications[index]),
                          trailing: Text(
                            trailingTextList[index],
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.black54.withOpacity(0.3)),
                          ),
                          leading: CircleAvatar(
                            backgroundImage: AssetImage("images/ppic.png"),
                            radius: 30,
                            backgroundColor: Colors.transparent,
                          ),
                        ),
                        onTap: () {
                          bool isClicked = false;

                          if (isClicked == true) {
                            SvgPicture.asset(kFilterOptionButton);
                          }
                        },
                      ),
                      Positioned(
                        top: 2.0,
                        left: 60.0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          height: 11,
                          width: 11,
                          child: Center(
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: true ? Color(0xFF84C857) : Colors.grey,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                height: 10,
                                width: 10,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
