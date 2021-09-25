import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  const UserPosts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://www.yourdentistryguide.com/wp-content/uploads/2017/11/smile-anatomy-min.jpg'),
          ),
        ),
      ),
    );
  }
}
