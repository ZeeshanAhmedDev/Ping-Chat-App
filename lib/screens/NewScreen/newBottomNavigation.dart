import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pingchat/screens/NewScreen/message_screen.dart';
import 'package:pingchat/utils/const.dart';

import '../Home Screen.dart';
import 'ResetPassword.dart';
import 'friends.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Message(),
    Friends(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      index = _selectedIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(
        _selectedIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10.0,
        iconSize: 30.0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        selectedItemColor: kCustomContainerColor,
        unselectedItemColor: Colors.grey.shade600,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: ImageIcon(
              AssetImage(
                'images/feed4.png',
              ),
            ),
            label: 'Feed',
          ),
          BottomNavigationBarItem(
            backgroundColor: kCustomContainerColor,
            icon: Icon(
              CupertinoIcons.home,
            ),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            backgroundColor: kCustomContainerColor,
            icon: ImageIcon(
              AssetImage(
                'images/imagpicture.png',
              ),
              color: kCustomContainerColor,
            ),
            label: 'Chats',
          ),
          // BottomNavigationBarItem(
          //   icon: ImageIcon(
          //     AssetImage(
          //       'images/settings.png',
          //     ),
          //   ),
          //   label: 'Settings',
          // ),
        ],
      ),
    );
  }
}
