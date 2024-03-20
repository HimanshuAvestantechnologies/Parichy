import 'package:flutter/material.dart';
class SubscriptionsScreen extends StatelessWidget {
  const SubscriptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Subscriptions"),),
      body: SingleChildScrollView(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("   You have subscribed to",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black54),
            ),
          const SizedBox(height: 5,),
            Padding(padding: const EdgeInsets.all(15),
           child:  Container(
              padding: const EdgeInsets.only(top: 10,left: 15),
              height: 190,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.pinkAccent,
                  borderRadius: BorderRadius.circular(5)),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                        Text("Premium Plan",style: TextStyle(fontSize: 20,color: Colors.white),),
                        SizedBox(width: 60,),
                        Text("2 days left",style: TextStyle(fontSize: 20,color: Colors.white),),
                 ]
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Icon(Icons.cloud_done, color: Colors.white),
                      Text("  Direct message to all profile", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Icon(Icons.cloud_done, color: Colors.white),
                      SizedBox(width: 10),
                      Text("Unlimited profile visits", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  SizedBox(height: 10,),
               Row(
              children: [
              Icon(Icons.cloud_done, color: Colors.white),
              SizedBox(width: 10),
              Text("Access for 30 days", style: TextStyle(color: Colors.white)),
            ],
          ),
          ]
            )
            ),
            ),
            const SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.all(15),
              height: 500,
              width: double.infinity,
              color: Colors.grey.shade300,
             child:Column(
               crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
             const Text("Purchase Subscriptions",
               style: TextStyle(
                   fontSize: 20,
                   color: Colors.black,
                   fontWeight: FontWeight.w600),),
                      const SizedBox(height: 20,),
                      Container(
                         padding: const EdgeInsets.only(top: 20,left: 15),
                         height: 190,
                         width: double.infinity,
                         decoration: BoxDecoration(
                             color: Colors.pinkAccent,
                             borderRadius: BorderRadius.circular(5)),
                         child: const Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Row(children: [
                                 Text("Basic Plan",style: TextStyle(fontSize: 20,color: Colors.white),),
                                 SizedBox(width: 120,),
                                 Text('\$ 9.99',style: TextStyle(fontSize: 20,color: Colors.white),),
                               ]
                               ),
                               SizedBox(height: 15,),
                               Row(
                                 children: [
                                   Icon(Icons.cloud_done, color: Colors.white),
                                   Text("  No direct message", style: TextStyle(color: Colors.white)),
                                 ],
                               ),
                               SizedBox(height: 10,),
                               Row(
                                 children: [
                                   Icon(Icons.cloud_done, color: Colors.white),
                                   SizedBox(width: 10),
                                   Text("100 profile visits everyday", style: TextStyle(color: Colors.white)),
                                 ],
                               ),
                               SizedBox(height: 10,),
                               Row(
                                 children: [
                                   Icon(Icons.cloud_done, color: Colors.white),
                                   SizedBox(width: 10),
                                   Text("Access for 10 days", style: TextStyle(color: Colors.white)),
                                 ],
                               ),
                             ]
                         )
                     ),
                   const SizedBox(height: 15,),
                   Container(
                       padding: const EdgeInsets.only(top: 20,left: 15),
                       height: 180,
                       width: double.infinity,
                       decoration: BoxDecoration(
                           color: Colors.pinkAccent,
                           borderRadius: BorderRadius.circular(5)),
                       child: const Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Row(children: [
                               Text("Economy Plan",style: TextStyle(fontSize: 20,color: Colors.white),),
                               SizedBox(width: 80,),
                               Text('\$ 24.99',style: TextStyle(fontSize: 20,color: Colors.white),),
                             ]
                             ),
                             SizedBox(height: 15,),
                             Row(
                               children: [
                                 Icon(Icons.cloud_done, color: Colors.white),
                                 Text("  Direct message to 3 profile everyday", style: TextStyle(color: Colors.white)),
                               ],
                             ),
                             SizedBox(height: 10,),
                             Row(
                               children: [
                                 Icon(Icons.cloud_done, color: Colors.white),
                                 SizedBox(width: 10),
                                 Text("500 profile visits deveryday", style: TextStyle(color: Colors.white)),
                               ],
                             ),
                             SizedBox(height: 10,),
                             Row(
                               children: [
                                 Icon(Icons.cloud_done, color: Colors.white),
                                 SizedBox(width: 10),
                                 Text("Access for 15 days", style: TextStyle(color: Colors.white)),
                               ],
                             ),
                           ]
                       )
                    ),
                 ]
              )
            )
          ],
        ),
      ),
    );
  }
}
