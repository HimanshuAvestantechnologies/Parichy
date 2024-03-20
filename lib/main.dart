import 'package:flutter/material.dart';
import 'package:matrimony_app/Auth/SplashScreen.dart';
import 'package:matrimony_app/Bottom_Bar/Bottom_tab_view.dart';
import 'package:matrimony_app/Pages/Account_Screen.dart';
import 'package:matrimony_app/Account_View/Menu_Screen.dart';
import 'package:matrimony_app/Account_View/My_Subscriptions.dart';
import 'package:matrimony_app/Account_View/Profile_Screen.dart';
import 'package:matrimony_app/Account_View/Purchase_Plan_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Matrimony App,',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home://ProfileScreen(),
      //AccountScreen()
      //SubscriptionsScreen()
     // PurchasePlanScreen()
    //  MenuScreen()
     // BottomView()
      ViewPage()

    );
  }
}
