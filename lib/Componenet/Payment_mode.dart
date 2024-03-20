import 'package:flutter/material.dart';
class PaymentMode extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final String icon;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;

  const PaymentMode({
    super.key,
    required this.onPressed,
    required this.title,
    required this.icon,
    required this.color,
    this.fontSize = 20,
    this.fontWeight = FontWeight.w500,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child:
      Container(
        padding: EdgeInsets.all(10),
        height: 70,
        width: double.infinity,
        color: Colors.white,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              icon,
              width: 50,
              height: 50,
              fit: BoxFit.contain,
            ),
            SizedBox(width: 15,),
            Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      )
    );
  }
}
