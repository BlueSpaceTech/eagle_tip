import 'dart:async';

import 'package:eagle_tip/Routes/approutes.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/HomeScreens/Home_screen.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/HomeScreens/bottomNav.dart';
import 'package:eagle_tip/UI/views/pre_auth_screens/login_screen.dart';
import 'package:eagle_tip/UI/views/pre_auth_screens/splashscreen.dart';
import 'package:eagle_tip/Utils/responsive.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserNavigator extends StatelessWidget {
  const UserNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          if (snapshot.hasData) {
            if (Responsive.isDesktop(context)) {
              return HomeScreen();
            } else {
              return BottomNav();
            }
          } else if (snapshot.hasError) {
            return Center(
              child: Text("Some internal error occured"),
            );
          }
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return SplashScreen();
        }

        return LoginScreen();
      },
    );
  }
}
