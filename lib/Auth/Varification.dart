import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common widget/otp.dart';
import 'ResetPassword.dart';
class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(30.0),
          child: Column(
              children: [
                const SizedBox(height: 64,),
                Text("We have sent otp to your gmail",
                  style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
                const  SizedBox(height: 15,),
                Text("Please check your Gmail continue reset your Password",
                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
                Container(
                  child: OtpForm(),
                ),
                SizedBox(height: 30,),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.height*0.4,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.pinkAccent.shade100,


                  ),
                  child: TextButton(onPressed: (){Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context) => Password())
                  );
                  }, child: Text("Verify",style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w700 ,color: Colors.white),),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("If you don't recieve a code?",style: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.w400 )),
                    TextButton(onPressed: () {},

                        child: Text("Resend",style: GoogleFonts.inter
                          (textStyle:Theme.of(context).textTheme.displayLarge,fontSize: 16,fontWeight:FontWeight.w600,color: Colors.pinkAccent.shade100 ),)
                    ),
                  ],
                ),
                SizedBox(height: 30,),
                Image.asset("assets/images/otp.jpg",fit: BoxFit.contain,)
              ]
          ),

        ),
      ),

    );
  }
}