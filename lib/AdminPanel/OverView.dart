import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matrimony_app/Componenet/Analtics_Buttom.dart';
class OverView extends StatefulWidget {
  const OverView({super.key});

  @override
  State<OverView> createState() => _OverViewState();
}

class _OverViewState extends State<OverView> {
  List<Choice> choices = const <Choice>[
    Choice(
      title: "Total User",
      additionalText: '855',
      imagePath: 'assets/icons/group (2).png',
    ),
    Choice(
      title: 'Active User',
      additionalText: '658',
      imagePath: 'assets/icons/user (1).png',
    ),
    Choice(
      title: 'Matches',
      additionalText: '238',
      imagePath: 'assets/icons/match.png',
    ),
    Choice(
      title: 'Total View',
      additionalText: '876',
      imagePath: 'assets/icons/eye.png',
    ),
  ];
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(height: 30,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Color(0xfff4A8BB7),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: Text("+ Add user"),),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            GridView.builder(
                              gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 20,
                                mainAxisSpacing: 20,
                              ),
                              itemCount: choices.length,
                              shrinkWrap: true,
                              itemBuilder: (BuildContext context, int index) {
                                return Card(
                                    color: const Color(0xfffD9D9D9),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Container(
                                        padding: const EdgeInsets.all(10),
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Image.asset(
                                              choices[index].imagePath,
                                              height: 30,
                                              width: 30,
                                            ),
                                            Column(children: [
                                              Text(
                                                choices[index].additionalText,
                                                style: const TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(choices[index].title,
                                                  style: GoogleFonts.inter(
                                                    textStyle: Theme.of(context)
                                                        .textTheme
                                                        .displayLarge,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                  textAlign: TextAlign.center),
                                            ]
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ]
       )
       )
    );
  }
}

class Choice {
  final String title;
  final String imagePath;
  final String additionalText;

  const Choice(
      {required this.title,
        required this.imagePath,
        required this.additionalText});
}

