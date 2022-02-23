import 'package:eagle_tip/UI/views/post_auth_screens/Chat/allchats.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/Chat/newchat.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/Chat/newchatscreen.dart';
import 'package:eagle_tip/Utils/responsive.dart';
import 'package:flutter/material.dart';

class MessageMain extends StatefulWidget {
  MessageMain({Key? key, required this.index}) : super(key: key);
  int index;
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
            Expanded(
                flex: 5,
                child: ChatScreenn(
                  index: widget.index,
                )),
          ],
        ),
      ),
    );
  }
}

class NewChatMain extends StatefulWidget {
  NewChatMain({Key? key, required this.index}) : super(key: key);
  int index;
  @override
  _NewChatMainState createState() => _NewChatMainState();
}

class _NewChatMainState extends State<NewChatMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        mobile: NewChatScreen(),
        tablet: NewChatScreen(),
        desktop: Row(
          children: [
            Expanded(flex: 2, child: AllChatScreen()),
            Expanded(
                flex: 5,
                child: ChatScreenn(
                  index: widget.index,
                )),
          ],
        ),
      ),
    );
  }
}
