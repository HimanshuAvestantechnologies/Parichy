import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matrimony_app/Auth/Varification.dart';


import 'Verification.dart';
class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Forget your Password?",style:GoogleFonts.poppins(fontSize: 25,fontWeight: FontWeight.w600),),
            SizedBox(height: 10,),
            Text("Please Enter your Gmail continue reset your Password",style:GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40,),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(width: 1)
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText:" Email",
                    prefixIcon: Icon(Icons.mail)
                ),
              ),
            ),
            SizedBox(height: 60,),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),

                  color: Colors.pinkAccent.shade100
              ),
              child: TextButton(onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) => Verification()));
              }, child:Text("Send",style: GoogleFonts.poppins(fontWeight: FontWeight.w700,fontSize: 15,color: Colors.white)
              ),
              ),
            ),
            SizedBox(height: 30,),
            Image(image: AssetImage("assets/images/img.png"),height: 300,)

          ],
        ),
      ),
    );
  }
}