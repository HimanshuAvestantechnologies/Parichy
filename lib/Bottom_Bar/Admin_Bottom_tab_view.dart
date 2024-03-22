import 'package:flutter/material.dart';
import 'package:matrimony_app/AdminPanel/Admin_Account_Screen.dart';
import 'package:matrimony_app/AdminPanel/Analytics_Screen.dart';
import 'package:matrimony_app/AdminPanel/OverView.dart';
import 'package:matrimony_app/AdminPanel/Matches_Screen.dart';
class AdminBottomTabView extends StatefulWidget {
  const AdminBottomTabView({super.key});

  @override
  State<AdminBottomTabView> createState() => _AdminBottomTabViewState();
}

class _AdminBottomTabViewState extends State<AdminBottomTabView> {
  int currentTab = 0;
  final List<Widget> screens = [
    const OverView(),
    const MatchesScreen(),
    const AnalyticsScreen(),
    const AdminAccountScreen(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const OverView();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xfffFFFFFF),
        height: 60,
        child: SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 30,
                    onPressed: () {
                      setState(() {
                        currentScreen = const OverView();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/icons/exam-results.png",
                          height: 20,
                          width: 20,
                          color:
                          currentTab == 0 ? Colors.pinkAccent : Colors.black54,
                        ),
                     Text("OverView",style: TextStyle(fontSize: 8),)
                      ],
                    ),
                  ),
                  const SizedBox(width: 20,),
                  MaterialButton(
                    minWidth: 30,
                    onPressed: () {
                      setState(() {
                        currentScreen = const MatchesScreen();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/icons/match.png",
                          height: 20,width: 20,
                          color:
                          currentTab == 1 ? Colors.pinkAccent : Colors.black54,
                        ),
                        Text("Matches",style: TextStyle(fontSize: 8),)
                      ],
                    ),
                  ),
                  const SizedBox(width: 20,),
                  MaterialButton(
                    minWidth: 30,
                    onPressed: () {
                      setState(() {
                        currentScreen = const AnalyticsScreen();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/icons/network-signal.png",height: 20,
                          width: 20,
                          color:
                          currentTab == 2 ? Colors.pinkAccent: Colors.black54,
                        ),
                        Text("Analytics",style: TextStyle(fontSize: 8),)
                      ],
                    ),
                  ),
                  const SizedBox(width: 20,),
                  MaterialButton(
                    minWidth: 30,
                    onPressed: () {
                      setState(() {
                        currentScreen = const AdminAccountScreen();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/icons/user (1).png",
                          height: 20,
                          width: 20,
                          color:
                          currentTab == 3 ? Colors.pinkAccent : Colors.black,
                        ),
                        Text("Account",style: TextStyle(fontSize: 8),)
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
