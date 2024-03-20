import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child:Padding(padding: const EdgeInsets.all(20),
       child:Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("We're Happy to\nhear from you!!",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,color: 
              Colors.black),
            ),
            const SizedBox(height: 10,),
            const Text("Let us know your queries & Feedbacks",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black54),
            ),
            const SizedBox(height: 30,),
            Column(
              children: [
                Row(
                  children: [
            GestureDetector(
            onTap: () {},
               child:  Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1,
                        color: Colors.pinkAccent),
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child:  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.phone,size: 20,
                        color: Colors.pinkAccent,),
                      SizedBox(width: 8,),
                      Text(
                        'Call us',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.pinkAccent,
                        ),
                      ),
                    ],
                  ),
                ),
               ),
                const SizedBox(width: 10,),
                    GestureDetector(
                        onTap: () {},
               child:Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                      borderRadius: BorderRadius.circular(8)
                        ),
                  child:const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.email,size: 20,
                        color: Colors.white,),
                      SizedBox(width: 8,),
                      Text(
                        'Email us',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          ),
                         ),
                        ],
                      ),
                     ),
                    ),
                  ]
                )
              ],
            ),
            const SizedBox(height: 50,),
            const Row(
              children: [
                Icon(Icons.email,size: 25,
                  color: Colors.pinkAccent,),
                SizedBox(width: 8,),
                Text(
                  'Send your message',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50,),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Text("My Email address is",style: TextStyle(fontSize: 20,color: Colors.black),),
            TextField(
              decoration: InputDecoration(
                hintText: "Enter your email address"
              ),
            ),
                  SizedBox(height: 50,),
                  Text("My concern is",style: TextStyle(
                      fontSize: 20,
                      color: Colors.black),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Enter your feedback or query"
                    ),
                  )
                ]
            ),
           const SizedBox(height: 50,),
           Container(
             height: 50,
             width: double.infinity,
             color: Colors.pinkAccent,
             child: ElevatedButton(onPressed: (){},
                 style: ElevatedButton.styleFrom(
                   padding: const EdgeInsets.all(16.0),
                    backgroundColor: Colors.pinkAccent,
                 ),
                 child: const Text("Submit Now",
                   style: TextStyle(
                       fontSize: 16,
                       color: Colors.white
                 ),
                 )
               ),
             )
           ],
         ),
       ),
      )
    );
  }
}
