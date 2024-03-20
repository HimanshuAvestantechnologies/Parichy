import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matrimony_app/Account_View/My_Subscriptions.dart';
import 'package:matrimony_app/Account_View/Profile_Screen.dart';
import 'package:matrimony_app/Componenet/Account_Button.dart';
class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Account",
        style: TextStyle(
            fontSize: 30,
            color: Colors.black),),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Logout',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
        Padding(padding: const EdgeInsets.only(left: 15,top: 15),
        child:Row(
          children: [
        Container(
          height: 100,
          width: 100,
          color: Colors.grey,
          child: const Icon(Icons.camera_alt),
            ),
            SizedBox(width: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
            Text("Hey,\nGeorge Smith",style: TextStyle(fontSize: 20,color: Colors.black),),
              TextButton(onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context) => ProfileScreen()));
              },
                  child: Text("View Profile",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey),)
                  )
                ]
               )
             ]
           ),
        ),
              SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.all(15),
              height: 80,
              width: double.infinity,
              color: Colors.pinkAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("You're Subscribed",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white),),
                      Text("Premium Plan",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white70),)
                    ],
                  ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context) => SubscriptionsScreen()));
                },
             child:  Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.white,
                size: 30,
              )
              )
                ],
              ),
            ),
      SizedBox(height: 20,),
      Container(
          padding: EdgeInsets.all(15),
          height: 80,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Contact Us",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black),),
                  Text("Let us know your feedback & queries",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey),)
                ],
              ),

                Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.black,
                  size: 30,
                ),
            ],
          ),
      ),
      SizedBox(height: 20,),
      Container(
          padding: EdgeInsets.all(15),
          height: 80,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("About us",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black),),
                  Text("know who we are & how we started",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey),)
                ],
              ),
              Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.black,
                size: 30,
              )
            ],
          ),
      ),
      SizedBox(height: 20,),
      Container(
          padding: EdgeInsets.all(15),
          height: 80,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Terms & Conditions",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black),),
                  Text("Read company's terms & conditions",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey),)
                ],
              ),
              Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.black,
                size: 30,
              )
            ],
          ),
      ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(15),
                height: 80,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Rate us",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black),),
                        Text("Show your love by rate us on playstore",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey),)
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.black,
                      size: 30,
                    )
                  ],
                ),
              )
      ]
      ),
      )


    );
  }
}
