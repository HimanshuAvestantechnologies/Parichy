import 'package:flutter/material.dart';
import 'package:matrimony_app/Componenet/Payment_mode.dart';
class PurchasePlanScreen extends StatefulWidget {
  const PurchasePlanScreen({super.key});

  @override
  State<PurchasePlanScreen> createState() => _PurchasePlanScreenState();
}

class _PurchasePlanScreenState extends State<PurchasePlanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Purchase Plan"),),
        body: SingleChildScrollView(
            child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("  You have subscribed to",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black54),
                  ),
                  const SizedBox(height: 5,),
                  Padding(padding: const EdgeInsets.all(15),
                    child:Container(
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
                                SizedBox(width: 90,),
                                Text("\$ 39.99",style: TextStyle(fontSize: 20,color: Colors.white),),
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
                                  Text("Unlimited profile visits",
                                      style: TextStyle(color: Colors.white)),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Icon(Icons.cloud_done, color: Colors.white),
                                  SizedBox(width: 10),
                                  Text("Access for 30 days",
                                      style: TextStyle(color: Colors.white)
                                  ),
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
                            const Text("Select Payment mode",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),),
                            const SizedBox(height: 20,),
                           PaymentMode(onPressed: (){
                             print("Options cards");
                           },
                               title: "Credit/ Debit Cards",
                               icon: "assets/icons/credit-card.png",
                               color: Colors.white),
                            const SizedBox(height: 20,),
                      PaymentMode(
                          onPressed: (){
                            print("PayPal");
                          },
                          title: "PayPal Money",
                          icon: "assets/icons/paypal.png", color: Colors.white),
                      const SizedBox(height: 20,),
                            PaymentMode(onPressed: (){
                              print("PayU");
                            },
                                title: "PayU Money",
                                icon: "assets/icons/money.png",
                                color:Colors.white)

                          ]
                      )
                  )
                ]
            )
        )
    );
  }
}
