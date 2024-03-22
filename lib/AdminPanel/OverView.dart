import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class OverView extends StatefulWidget {
  const OverView({super.key});

  @override
  State<OverView> createState() => _OverViewState();
}

class _OverViewState extends State<OverView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsets.only(top: 60,right: 20,left: 20),
        child: Column(
          children: [
            Row(
              children: [
                Text("Hello, ",
                  style: GoogleFonts.roboto(
                      fontSize:16,
                      fontWeight:FontWeight.w500),),
                Text("Shyam!",
                  style: GoogleFonts.roboto(
                      fontSize:16,
                      fontWeight:FontWeight.w500,
                      color:Colors.cyan),),
              ],
            ),
            SizedBox(height: 20),
            Container(height: 30,
              decoration: BoxDecoration(
                color: Color(0xfff4A8BB7),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(child: Text("+ Add user"),),

            )
          ],
        ),
      )
    
    );
  }
}

