import 'package:flutter/material.dart';
import 'package:matrimony_app/Pages/Account_Screen.dart';
import 'package:matrimony_app/Pages/Books_Mark_Screen.dart';
import 'package:matrimony_app/Pages/Chats_Screen.dart';
import 'package:matrimony_app/Pages/Home_Screen.dart';
class BottomView extends StatefulWidget {
  const BottomView({super.key});

  @override
  State<BottomView> createState() => _BottomViewState();
}

class _BottomViewState extends State<BottomView> {
  int currentTab = 0;
  final List<Widget> screens = [
    const HomeScreen(),
    const AccountScreen(),
    const ChatScreen(),
    const BookMarkScreen()

  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomeScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        height: 60,
        child: SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const HomeScreen();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/icons/group.png",height: 30,width: 30,
                          color:
                          currentTab == 0 ? Colors.pinkAccent : Colors.black54,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 25,),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = BookMarkScreen();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/icons/bookmark.png",
                          height: 30,width: 30,
                          color:
                          currentTab == 1 ? Colors.pinkAccent : Colors.black54,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 25,),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = ChatScreen();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/icons/chat.png",height: 30,
                          width: 30,
                          color:
                          currentTab == 2 ? Colors.pinkAccent: Colors.black54,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 25,),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const AccountScreen();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/icons/user (1).png",
                          height: 30,
                          width: 30,
                          color:
                          currentTab == 3 ? Colors.pinkAccent : Colors.black,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

