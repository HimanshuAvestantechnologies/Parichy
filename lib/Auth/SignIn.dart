import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matrimony_app/Bottom_Bar/Bottom_tab_view.dart';

import 'ForgetPassword.dart';
import 'Register.dart';
class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Center(child: Text("Sign in to",style:GoogleFonts.poppins(fontSize: 25,fontWeight: FontWeight.w600),),
                ),
                SizedBox(height: 30,),
                Image(image: AssetImage("assets/images/lock.jpg"),height: 90,width: 110,),
                SizedBox(height: 30,),
                Text("SoulMeet",style: GoogleFonts.poppins(fontWeight: FontWeight.w700,fontSize: 25),),
                SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      SizedBox(height: 10,),
                      Text("My Email Address is",style: GoogleFonts.poppins(fontWeight: FontWeight.w800,fontSize: 15)),
                      TextField(
                          decoration: InputDecoration(
                            hintText: "Enter your mail address",
                          )
                      ),
                      SizedBox(height: 20,),
                      Text("Shssss,my Password is",style: GoogleFonts.poppins(fontWeight: FontWeight.w800,fontSize: 15)),
                      TextField(
                          decoration: InputDecoration(
                            hintText: "Enter your Password",
                          )
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 200),
                        child: TextButton(onPressed: (){
                          Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context) => ForgetPassword()));
                        }, child:Text("Forget Password?",style: GoogleFonts.poppins(fontWeight: FontWeight.w700,fontSize: 15,color: Colors.pinkAccent)
                        ),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.pinkAccent.shade100
                        ),
                        child: TextButton(onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                              builder: (context) => BottomView())
                          );
                        }, child:Text("SignIn",style: GoogleFonts.poppins(fontWeight: FontWeight.w700,fontSize: 15,color: Colors.white)
                        ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Center(child: Text("oh!Not Registered yet?",style: GoogleFonts.poppins(fontWeight: FontWeight.w800,fontSize: 15))),
                      SizedBox(height: 30,),
                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 1)
                        ),
                        child: TextButton(onPressed: (){
                          Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpPage()));
                        }, child:Text("Register Now",style: GoogleFonts.poppins(fontWeight: FontWeight.w700,fontSize: 15,color: Colors.pinkAccent)
                        ),
                        ),
                      ),


                    ],
                  ),
                )



              ],
            ),
          ),
        )

    );
  }
}
