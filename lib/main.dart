// ignore_for_file: prefer_const_constructors

import 'package:eagle_tip/Providers/user_provider.dart';
import 'package:eagle_tip/Routes/approutes.dart';
import 'package:eagle_tip/Services/user_info_services.dart';
import 'package:eagle_tip/UI/views/on-borading-tour/final_tour.dart';
import 'package:eagle_tip/UI/views/on-borading-tour/tour1.dart';
import 'package:eagle_tip/UI/views/on-borading-tour/tour2.dart';
import 'package:eagle_tip/UI/views/on-borading-tour/tour3.dart';
import 'package:eagle_tip/UI/views/on-borading-tour/tour4.dart';
import 'package:eagle_tip/UI/views/on-borading-tour/tour5.dart';
import 'package:eagle_tip/UI/views/on-borading-tour/webuser/final_tour_web.dart';
import 'package:eagle_tip/UI/views/on-borading-tour/welcome_tour.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/CRUD/Add%20New%20User/Manager/addUserManager.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/CRUD/Add%20New%20User/Owner/addUserOwner.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/CRUD/Add%20New%20User/invitation.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/CRUD/crudmain.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/Chat/allchats.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/Chat/message_main.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/Chat/newchat.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/Chat/chatting.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/HomeScreens/bottomNav.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/HomeScreens/Home_screen.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/Notifications/createNotification.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/Notifications/notifications.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/Notifications/particularNotification.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/Request%20History/particular_request.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/Request%20History/request_history.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/Sites/site_details.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/Sites/sites.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/Support/support.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/Tanks/product_request.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/Tanks/tanks_request.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/Terminal/FAQ/addFAQ.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/Terminal/FAQ/faqTerminal.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/Terminal/terminalhome.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/TicketHistory/ticketHistory.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/TicketHistory/ticketHistoryDetail.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/UserProfiles/editUser.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/UserProfiles/myprofile.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/UserProfiles/userProfile.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/faq.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/settings.dart';
import 'package:eagle_tip/UI/views/pre_auth_screens/create_account.dart';
import 'package:eagle_tip/UI/views/pre_auth_screens/emailsent.dart';
import 'package:eagle_tip/UI/views/pre_auth_screens/employer_code.dart';
import 'package:eagle_tip/UI/views/pre_auth_screens/forgetpassword.dart';
import 'package:eagle_tip/UI/views/pre_auth_screens/login_screen.dart';
import 'package:eagle_tip/UI/views/pre_auth_screens/splashscreen.dart';
import 'package:eagle_tip/UI/views/pre_auth_screens/uploadimage.dart';
import 'package:eagle_tip/UI/views/user_navigator.dart';
import 'package:eagle_tip/Utils/responsive.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    // Replace with actual values

    options: FirebaseOptions(
      apiKey: "AIzaSyDVMUtzjQx29o2lMKZx0IHSJ_5v_z4mqnk",
      appId: "1:168073462322:android:364f09407678105ceeb22b",
      messagingSenderId: "168073462322",
      projectId: "eagle-tip",
    ),
  );
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
          create: (context) => UserProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          backgroundColor: Color(0xff2B343B),
        ),
        // initialRoute: AppRoutes.myProfile,
        home: UserNavigator(),
        routes: {
          AppRoutes.support: (context) => SupportScreen(),
          AppRoutes.addFAQ: (context) => AddFAQ(),
          AppRoutes.faq: (context) => FAQScreen(),
          AppRoutes.loginscreen: (context) => LoginScreen(),
          AppRoutes.employercode: (context) => EmployerCode(),
          AppRoutes.bottomNav: (context) => BottomNav(),
          AppRoutes.homeScreen: (context) => HomeScreen(),
          AppRoutes.forgetpass: (context) => ForgetPassword(),
          AppRoutes.mailsent: (context) => EmailSent(),
          AppRoutes.faqTerminal: (context) => TerminalFAQ(),
          AppRoutes.tanksRequest: (context) => TanksRequest(),
          AppRoutes.welcometour: (context) => WelcomeTour(),
          AppRoutes.tour1: (context) => Tour1(),
          AppRoutes.tour2: (context) => Tour2(),
          AppRoutes.tour3: (context) => Tour3(),
          AppRoutes.tour4: (context) => Tour4(),
          AppRoutes.notifications: (context) => Notifications(),
          AppRoutes.tour5: (context) => Tour5(),
          AppRoutes.finaltour: (context) => FinalTour(),
          AppRoutes.ticketHistory: (context) => TicketHistory(),
          AppRoutes.myProfile: (context) => MyProfile(),
          AppRoutes.siteScreen: (context) => Sites(),
          AppRoutes.siteDetails: (context) => SiteDetails(),
          AppRoutes.settings: (context) => Settings(),
          AppRoutes.chattingscreen: (context) => ChatScreenn(
                index: 0,
              ),
          AppRoutes.addUserOwner: (context) => AddNewUserByOwner(),
          AppRoutes.addUserManager: (context) => AddUserByManager(),

          AppRoutes.particularRequest: (context) => ParticularRequest(),
          AppRoutes.newchat: (context) => NewChatScreen(),
          // AppRoutes.chattingscreen: (context) => ChatScreenn(),
          AppRoutes.crudscreen: (context) => CrudScreen(),
          AppRoutes.editUser: (context) => EditUser(),
          AppRoutes.useprofile: (context) => UserProfile(),
          AppRoutes.splashscreen: (context) => SplashScreen(),
          AppRoutes.createNotification: (context) => CreateNotification(),
          AppRoutes.specificNotification: (context) => SpecificNotification(
              notifyName: "Hurricane Coming!",
              notifyContent:
                  "Risus vestibulum, risus feugiat semper velit feugiat velit. Placerat elit volutpat volutpat elit bibendum molestie eget. Convallis mattis dignissim quis tincidunt quisque. Adipiscing suspendisse faucibus aliquet a turpis odio pellentesque lectus duis. Sodales odio eu bibendum massa velit maecenas eget. Maecenas facilisis nunc tincidunt sed eget viverra porttitor feugiat. Mattis dictum sed suspendisse faucibus gravida. Id eget amet dis amet ut at in eget nam. "),
          AppRoutes.webfinaltour: (context) => FinalTourWeb(),
          AppRoutes.messagemain: (context) => MessageMain(index: 0),
          AppRoutes.terminalhome: (context) => TerminalHome(),
        },
      ),
    );
  }
}
