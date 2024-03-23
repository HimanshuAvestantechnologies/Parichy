import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matrimony_app/Auth/ProfileSetupScreen.dart';
import 'package:matrimony_app/Bottom_Bar/Admin_Bottom_tab_view.dart';
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
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image(image: AssetImage('assets/images/couple image1.jpg'),fit: BoxFit.contain,),
                Center(child: Text("Login",style:GoogleFonts.poppins(fontSize: 25,fontWeight: FontWeight.w600),),
                ),
                SizedBox(height: 20,),
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
                        }, child:Text("Forget Password?",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.pinkAccent)
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
                          Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context) => BottomView()));
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