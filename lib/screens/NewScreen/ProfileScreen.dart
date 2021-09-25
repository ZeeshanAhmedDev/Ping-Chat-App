import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pingchat/components/custom_back_arrow_icon.dart';
import 'package:pingchat/components/custom_dialog.dart';
import 'package:pingchat/models/ProfileCatalog.dart';
import 'package:pingchat/screens/NewScreen/ChatScreen.dart';
import 'package:pingchat/utils/const.dart';
import 'newBottomNavigation.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String func(int index) {
    String myindex = myList[index];
    return myindex;
  }

  String adduser = 'Add Friend';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 60),
        child: AppBar(
          elevation: 0,
          leading: Padding(
            padding: EdgeInsets.only(right: 99.0, bottom: 22.0),
            child: CustomBackArrowIcon(),
          ),
          actions: [
            Padding(
                padding: const EdgeInsets.all(16.0),
                child: IconButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return CustomDialogBox();
                        });
                  },
                  icon: Icon(
                    Icons.more_vert_outlined,
                    color: Colors.black54,
                  ),
                ))
          ],
          title: Padding(
            padding: const EdgeInsets.only(right: 8.0, top: 5.0),
            child: Text(
              'Profile',
              style: TextStyle(color: Colors.black54),
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Divider(
            height: 8,
            thickness: 8,
          ),
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
                        image: new AssetImage("images/pic02.png"),
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
          Text(
            'Ryan Brights',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    adduser = 'Added';
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
                      Text(
                        adduser,
                        style: TextStyle(color: kWhiteColourWhiteColor),
                      ),
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
                  child: Image.asset(
                    func(index),
                    fit: BoxFit.contain,
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
