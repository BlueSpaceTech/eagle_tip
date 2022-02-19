// ignore_for_file: prefer_const_constructors, prefer_final_fields, unused_field, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:eagle_tip/UI/views/post_auth_screens/Chat/allchats.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/HomeScreens/Home_screen.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/Notifications/notifications.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/UserProfiles/myprofile.dart';
import 'package:eagle_tip/Utils/common.dart';
import 'package:eagle_tip/Utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 1;
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: Color(0xFFA0A3BD),
  );
  List<Widget> _widgetOptions = <Widget>[
    MyProfile(),
    HomeScreen(),
    Notifications(),
    AllChatScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFF1A1F23),
        unselectedItemColor: Color(0xFFA0A3BD),
        selectedItemColor: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
            ),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              Common.assetImages + "home.png",
              width: 16.0,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              Common.assetImages + "Group 308.png",
              width: 16.0,
            ),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              Common.assetImages + "message.png",
              width: 16.0,
            ),
            label: 'Chat',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
