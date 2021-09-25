import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pingchat/models/ProfileCatalog.dart';
import 'package:pingchat/utils/const.dart';

import 'ChatScreen.dart';
import 'newBottomNavigation.dart';

class UserProfileScreens extends StatefulWidget {
  const UserProfileScreens({Key? key}) : super(key: key);

  @override
  _UserProfileScreensState createState() => _UserProfileScreensState();
}

class _UserProfileScreensState extends State<UserProfileScreens> {
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
              child: Padding(
                padding: EdgeInsets.only(left: myWidth * 0.08),
                child: Icon(
                  Icons.arrow_back_ios_outlined,
                  size: 22,
                  color: Color(0xFF6B6B6B),
                ),
              ),
            ),
          ),
          title: Padding(
            padding: EdgeInsets.only(top: myHeight * 0.03),
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Text(
                'Profile',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Divider(
          //   height: 8,
          //   thickness: 8,
          // ),
          Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    decoration: new BoxDecoration(
                      color: Colors.grey,
                      image: new DecorationImage(
                        image: new AssetImage(kProfilePostPic),
                        fit: BoxFit.cover,
                      ),
                    ),
                    height: 177,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 10, left: 20, right: 20),
                    child: SizedBox(),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 130.0),
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  backgroundImage: NetworkImage(
                    'https://www.adcchesterton.com/assets/images/switch-missing.png',
                  ),
                  radius: 50.0,
                ),
              ),
            ],
          ),
          Padding(
            padding:
                EdgeInsets.only(top: myHeight * 0.01, left: myWidth * 0.04),
            child: Text(
              'Ryan Brights',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 10.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    // adduser = 'Added';
                  });
                },
                child: Container(
                  //  margin: EdgeInsets.only(top: 250),
                  width: 191,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(53),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF9B5BEB),
                        Color(0xFF5574DA),
                      ],
                    ),
                  ),
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person_add_alt,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      // Text(
                      //    adduser,
                      //   style: TextStyle(color: kWhiteColourWhiteColor),
                      // ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => Chat(),
                      ));
                },
                child: Container(
                  //    margin: EdgeInsets.only(top: 250,),
                  width: 120,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(53),
                    color: Color(0xFFD8D8D8),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        CupertinoIcons.chat_bubble_text,
                        color: Colors.purple,
                      ),
                      Text(
                        'Chat',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Expanded(
            child: GridView.count(
              clipBehavior: Clip.antiAlias,
              padding: EdgeInsets.symmetric(horizontal: 20),
              physics: BouncingScrollPhysics(),
              crossAxisSpacing: 6,
              crossAxisCount: 3,
              children: List.generate(myList.length, (index) {
                return InkWell(
                  onTap: () => Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => NavigationBar(),
                      )),
                  // child: Image.asset(
                  //   func(index),
                  //   fit: BoxFit.contain,
                  // ),
                );
              }),
            ),
          ),
        ],
      ),

      // Stack(
      //   children: [
      //     Container(
      //       height: myHeight,
      //       width: myWidth,
      //       color: Colors.pink.shade100,
      //       child: Stack(
      //         children: [
      //           Column(
      //             children: [
      //               Positioned(
      //                 child: Padding(
      //                   padding: EdgeInsets.only(
      //                     left: myWidth * 0.06,
      //                     right: myWidth * 0.06,
      //                     top: myHeight * 0.01,
      //                     bottom: myHeight * 0.01,
      //                   ),
      //                   child: Image.asset(kProfilePostPic),
      //                 ),
      //               ),
      //               CircleAvatar(
      //                 radius: 50,
      //                 backgroundColor: Colors.black54,
      //                 backgroundImage: NetworkImage(
      //                   'https://www.adcchesterton.com/assets/images/switch-missing.png',
      //                   scale: 22,
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ],
      //       ),
      //     )
      //   ],
      // ),
    );
  }
}
