import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pingchat/models/my_profile_page_with_two_tabs_SUGGESTIONS_MODEL.dart';
import 'package:pingchat/utils/const.dart';

import '../search_friend.dart';

class FriendsWithTwoTabs extends StatefulWidget {
  const FriendsWithTwoTabs({Key? key}) : super(key: key);

  @override
  _FriendsWithTwoTabsState createState() => _FriendsWithTwoTabsState();
}

bool isCLicked = true;
enum myEnum { suggestions, allFriends }
List<String> myList = [
  'Jenis Dens',
  'Elena Decruz',
  'Jack Harmen',
  'Ren Dens',
  'Julia Dens',
  'Jenis Dens',
  'Jenis Dens',
  'Jenis Dens',
  'Jenis Dens',
  'Elena Decruz',
  'Jack Harmen',
];

List<String> myAddRemoveList = [
  'Add',
  'Remove',
];

List<ImageProvider> myImages = [
  AssetImage('images/pic_001.png'),
  AssetImage('images/pic_002.png'),
  AssetImage('images/pic_003.png'),
  AssetImage('images/pic_004.png'),
  AssetImage('images/pic_005.png'),
  AssetImage('images/pic_006.png'),
  AssetImage('images/pic_007.png'),
  AssetImage('images/pic_008.png'),
  AssetImage('images/pic_009.png'),
  // ,
  // 'images/pic_002.png',
  // 'images/pic_003.png',
  // 'images/pic_004.png',
  // 'images/pic_005.png',
  // 'images/pic_006.png',
  // 'images/pic_007.png',
  // 'images/pic_008.png',
  // 'images/pic_009.png',
];

class _FriendsWithTwoTabsState extends State<FriendsWithTwoTabs> {
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
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FriendsWithTwoTabs(),
                  )),
              child: Padding(
                padding: EdgeInsets.only(left: myWidth * 0.08),
              ),
            ),
          ),
          actions: [
            Padding(
              padding:
                  EdgeInsets.only(right: myWidth * 0.04, top: myHeight * 0.035),
              child: GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SearchFriendScreen(),
                    )),
                child: SvgPicture.asset(
                  'images/search_icon.svg',
                  color: Color(0xFF6B6B6B),
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(right: myWidth * 0.05, top: myHeight * 0.035),
              child: Icon(
                Icons.more_vert,
                color: Color(0xFF6B6B6B),
                size: 30,
              ),
            ),
          ],
          backgroundColor: Color(0xFFF3F3F3),
          title: Padding(
            padding: EdgeInsets.only(top: myHeight * 0.03),
            child: Text(
              'Friends',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(myHeight * 0.04),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {});
                      },
                      child: Column(
                        children: [
                          Text(
                            'Suggestions',
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: myHeight * 0.02,
                          ),
                          Container(
                            width: myWidth * 0.5,
                            height: myHeight * 0.01,
                            decoration: BoxDecoration(
                              color: kCustomContainerColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          'All Friends',
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: myHeight * 0.02,
                        ),
                        Container(
                          width: myWidth * 0.5,
                          height: myHeight * 0.01,
                          decoration: BoxDecoration(
                            color: Color(0xFFF3F3F3),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.zero,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: myWidth * 0.3),
                    child: Text(
                      'Friend Suggestions',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                        text: 'You have',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize: 14),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' 5',
                            style: TextStyle(color: Colors.red, fontSize: 16),
                          ),
                          TextSpan(
                            text: ' new friends suggestions',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w300,
                                fontSize: 14),
                          )
                        ]),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: myHeight * 0.03,
            ),
            SizedBox(
              // height: myHeight / 1.5,
              height: myHeight * 0.7,
              child: ListView.builder(
                itemCount: myList.length,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                reverse: false,
                itemBuilder: (context, index) => Column(
                  children: [
                    SizedBox(
                      height: myHeight * 0.02,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: (myImages.last),
                        radius: 50.0,
                      ),
                      title: Text(
                        myList[index],
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      subtitle: GestureDetector(
                          onTap: () {},
                          child: Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: myWidth * 0.3,
                                    height: myHeight * 0.04,
                                    decoration: BoxDecoration(
                                        color: kCustomContainerColor,
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Text(
                                      myAddRemoveList.first,
                                      style: TextStyle(
                                          color: kWhiteColourWhiteColor),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: myWidth * 0.04,
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: myWidth * 0.3,
                                    height: myHeight * 0.04,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFDEDEDE),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Text(
                                      myAddRemoveList.last,
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
