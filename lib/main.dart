import 'package:eagle_tip/Routes/approutes.dart';
import 'package:eagle_tip/Services/user_info_services.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/HomeScreens/bottomNav.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/Home_screen.dart';
import 'package:eagle_tip/UI/views/pre_auth_screens/create_account.dart';
import 'package:eagle_tip/UI/views/pre_auth_screens/employer_code.dart';
import 'package:eagle_tip/UI/views/pre_auth_screens/login_screen.dart';
import 'package:eagle_tip/UI/views/pre_auth_screens/uploadimage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserInfoServices(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: AppRoutes.bottomNav,
        routes: {
          AppRoutes.loginscreen: (context) => LoginScreen(),
          AppRoutes.employercode: (context) => EmployerCode(),
          AppRoutes.createAccount: (context) => CreateAccount(),
          AppRoutes.uploadpicture: (context) => UploadImage(),
          AppRoutes.bottomNav: (context) => BottomNav(),
          AppRoutes.homeScreen: (context) => HomeScreen(),
        },
      ),
    );
  }
}
