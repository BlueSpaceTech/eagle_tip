import 'package:eagle_tip/UI/views/post_auth_screens/Chat/allchats.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/Chat/newchatscreen.dart';
import 'package:eagle_tip/Utils/responsive.dart';
import 'package:flutter/material.dart';

class MessageMain extends StatefulWidget {
  const MessageMain({Key? key}) : super(key: key);

  @override
  _MessageMainState createState() => _MessageMainState();
}

class _MessageMainState extends State<MessageMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        mobile: AllChatScreen(),
        tablet: AllChatScreen(),
        desktop: Row(
          children: [
            Expanded(flex: 2, child: AllChatScreen()),
            Expanded(flex: 5, child: ChatScreenn()),
          ],
        ),
      ),
    );
  }
}
