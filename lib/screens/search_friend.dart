import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pingchat/components/custom_post_container.dart';
import 'package:pingchat/models/post_data_model.dart';
import 'package:pingchat/models/search_friend_model.dart';
import 'package:pingchat/utils/const.dart';

import 'NewScreen/ChatScreen.dart';
import 'NewScreen/UserProfileScreens.dart';
import 'NewScreen/friends_with_suggestions_all_friends_tabs.dart';

class SearchFriendScreen extends StatefulWidget {
  const SearchFriendScreen({Key? key}) : super(key: key);

  @override
  _SearchFriendScreenState createState() => _SearchFriendScreenState();
}

class _SearchFriendScreenState extends State<SearchFriendScreen> {
  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    // return Scaffold(
    //   body: Expanded(
    //     child: ListView.separated(
    //         separatorBuilder: (BuildContext context, int index) =>
    //             const Divider(
    //               height: 8,
    //               thickness: 8,
    //             ),
    //         // itemCount: postItemsData.length,
    //         itemCount: MySearchFriend.myFriendSearch.length,
    //         itemBuilder: (BuildContext context, int index) {
    //           return ListTile(
    //             title: Text(MySearchFriend.myFriendSearch[index]),
    //             subtitle: Text(MySearchFriend.myFriendSubtitle[index]),
    //             leading: CircleAvatar(
    //               radius: 22,
    //               backgroundColor: Colors.black54,
    //               backgroundImage: AssetImage('images/ppic.png'),
    //             ),
    //           );
    //         }),
    //   ),
    // );
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
                  child: GestureDetector(
                    child: SvgPicture.asset(
                      'images/cancel.svg',
                      color: Color(0xFF6B6B6B),
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
              ),
            ),
            title: Padding(
              padding: EdgeInsets.only(top: myHeight * 0.03),
              child: GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FriendsWithTwoTabs(),
                    )),
                child: Text(
                  'Search Friends',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            backgroundColor: Color(0xFFF3F3F3),
          ),
        ),
        body: Container(
          width: myWidth,
          height: myHeight,
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Padding(
                //   padding: EdgeInsets.only(
                //     left: myWidth * 0.05,
                //     right: myWidth * 0.05,
                //     top: myHeight * 0.02,
                //     bottom: myWidth * 0.1,
                //   ),
                //   child: TextFormField(
                //     decoration: InputDecoration(
                //         border: OutlineInputBorder(
                //             borderRadius:
                //                 BorderRadius.circular(myHeight * 0.1))),
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    cursorColor: kCustomContainerColor,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFf1f1f1),
                      prefixIcon: Icon(
                        Icons.search,
                        color: kCustomContainerColor,
                      ),

                      alignLabelWithHint: true,
                      contentPadding: EdgeInsets.all(20),
                      // focusColor: kCustomContainerColor,
                      labelText: 'Search friends',
                      labelStyle: TextStyle(
                        height: 2,
                        color: Colors.black.withOpacity(0.3),
                        backgroundColor: Colors.transparent,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        // fontFamily: 'Lato-Bold.ttf',
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: myHeight * 0.01,
                ),
                ListView.separated(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(
                          height: 2,
                          thickness: 1,
                        ),
                    itemCount: MySearchFriend.myFriendSubtitle.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        leading: CircleAvatar(
                          radius: 22,
                          backgroundColor: Colors.black54,
                          backgroundImage: AssetImage('images/ppic.png'),
                        ),
                        title: Text(MySearchFriend.myFriendName[index]),
                        subtitle: Text(MySearchFriend.myFriendSubtitle[index]),
                      );
                    }),
              ],
            ),
          ),
        ));
  }
}
