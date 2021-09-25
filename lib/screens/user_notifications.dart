import 'package:flutter/material.dart';

class UserNotifications extends StatefulWidget {
  const UserNotifications({Key? key}) : super(key: key);

  @override
  _UserNotificationsState createState() => _UserNotificationsState();
}

class _UserNotificationsState extends State<UserNotifications> {
  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(myHeight * 0.1),
        child: AppBar(
          leading: Padding(
            padding: EdgeInsets.only(top: myHeight * 0.03),
            child: Icon(
              Icons.arrow_back_ios_outlined,
              size: 22,
              color: Color(0xFF6B6B6B),
            ),
          ),
          title: Padding(
            padding: EdgeInsets.only(top: myHeight * 0.03),
            child: Text(
              'Notifications',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
            ),
          ),
          actions: [
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
    );
  }
}
