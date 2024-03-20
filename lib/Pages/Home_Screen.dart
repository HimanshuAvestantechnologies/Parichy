import 'package:flutter/material.dart';
import 'package:matrimony_app/Pages/SetPreference.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isVisible = true;
  List<String> imageData = [
    "https://images.unsplash.com/photo-1494790108377-be9c29b29330?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D",
    "https://plus.unsplash.com/premium_photo-1675034393381-7e246fc40755?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fHByb2ZpbGV8ZW58MHx8MHx8fDA%3D",
    "https://images.unsplash.com/photo-1503104834685-7205e8607eb9?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8Z2lybHN8ZW58MHx8MHx8fDA%3D"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
          Text("SoulMeet"),
        GestureDetector( onTap:
                (){Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) =>SetPreference ()));

        },
        child:Text("Set Preference",
          style: TextStyle(
              fontSize: 14,
              color: Colors.pinkAccent),))
      ],),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 300,
          width: double.infinity,
          child: Column(
            children: [
              Row(
                children: [
                  Text('Samantha Smith',
                    style: TextStyle(fontSize: 20,
                        color: Colors.black),
                  ),
                  Spacer(),
                  Text('28 Years | '),
                  Text("5'8 feet"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Catholic Christian'),
                      Text("New York,USA"),
                      SizedBox(height: 10,),
                      Text('UI UX Designer'),
                      Text("Computer Science"),
                    ],
                  ),
                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width * .5,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: imageData.length,
                        itemBuilder: (context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.network(
                                imageData[index],
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          );
                        }),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(width: 1, color: Colors.red),
                      ),
                      child: Center(
                        child: Text('More Info'),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(width: 1, color: Colors.red),
                      ),
                      child: Center(
                        child: Text(
                          'Connect Request',style: TextStyle(),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}
