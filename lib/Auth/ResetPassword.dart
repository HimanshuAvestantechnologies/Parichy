import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'SignIn.dart';

class Password extends StatefulWidget {
  const Password({super.key});

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  TextEditingController _password = TextEditingController();
  TextEditingController _confirmpassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(20),
          child:  Column(

              crossAxisAlignment: CrossAxisAlignment.stretch,
              children:[
                Container(
                  alignment: Alignment.center,
                  child: Center(
                    child: Text("Reset Password",style: GoogleFonts.poppins(
                        fontSize: 25,
                        fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(height: 50,),
                TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    hintText: "Password",
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                  ),

                ),
                SizedBox(height: 30,),
                TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    hintText: "Confirm Password",
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                  ),

                ),
                SizedBox(height: 50,),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.height*0.4,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.pinkAccent.shade100,
                  ),
                  child: TextButton(onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => SignInPage())
                    );
                  }, child: Text("Done",style: TextStyle(fontSize: 20, color: Colors.black54),),),
                ),
                SizedBox(height: 40,),
                Image.asset("assets/images/Reset.jpg",fit: BoxFit.fitHeight,)

              ]
          ),
        ),
      ),
    );
  }
}