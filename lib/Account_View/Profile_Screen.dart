import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}
class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Profile",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),),),
      body: DefaultTabController(length: 3,
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: const EdgeInsets.only(left: 15,top: 15),
                  child:  Container(
                height: 100,
                width: 100,
                color: Colors.grey,
                child:const Icon(Icons.camera_alt),
              ),
                  ),
              const SizedBox(height: 20,),
              Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(5)
              ),
              child:  const TabBar(
                indicatorColor: Colors.pinkAccent,
                  labelColor: Colors.pinkAccent,
                  unselectedLabelColor: Colors.black,
                  tabs:[
                Tab(text: "Account",),
                Tab(text: "Personal",),
                Tab(text: "Profesional",)
                        ]
                   ),
              ),
            Expanded(
              child: TabBarView(
                children: [
                        _Account(context),
                        _Personal(context),
                        _Profesional(context),

                      ],
                    ),
            ),

            ]
              )
            ),
    );
  }
}


  _Profesional(BuildContext context){

  }

  _Personal(BuildContext context){

}

  _Account(BuildContext context){

}

