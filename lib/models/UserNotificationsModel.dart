import 'package:flutter/cupertino.dart';
import 'package:pingchat/utils/const.dart';

// class UserNotifications {
//   final String title;
//   final Image myImage;
//
//   UserNotifications({required this.title, required this.myImage});
//
// }

// class UserNotifications {
//   static List<UserNotifications> userNotifications = [];
// }

class UserNotifications {
  String title;
  String trailing;
  Image myImage;

  UserNotifications(
      {required this.title, required this.myImage, required this.trailing});
}

List<UserNotifications> userNotifications = [
  UserNotifications(
      title: 'Julian DaSilva likes your post',
      myImage: Image.asset(kCircularPic),
      trailing: '1 hour Ago'),
  UserNotifications(
      title: 'Your password was reset',
      myImage: Image.asset(kCircularPic),
      trailing: '2 min ago'),
  UserNotifications(
      title: 'Julian DaSilva sent you friend request',
      myImage: Image.asset(kCircularPic),
      trailing: '1 hour Ago')
];
