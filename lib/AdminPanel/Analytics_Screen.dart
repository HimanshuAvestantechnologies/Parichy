import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class AnalyticsScreen extends StatefulWidget {
  const AnalyticsScreen({super.key});

  @override
  State<AnalyticsScreen> createState() => _AnalyticsScreenState();
}

class _AnalyticsScreenState extends State<AnalyticsScreen> {
  List<Choice> choices = const <Choice>[
    Choice(
      title: 'User Activity',
      additionalText: '60%',
      imagePath: 'assets/icons/view.png',
    ),
    Choice(
      title: 'Commnucation',
      additionalText: '10%',
      imagePath: 'assets/icons/speech-bubble.png',
    ),
    Choice(
      title: 'Success Stories',
      additionalText: '25%',
      imagePath: 'assets/icons/success (1).png',
    ),
    Choice(
      title: 'Matchmaking',
      additionalText: '5%',
      imagePath: 'assets/icons/matchmaker.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
