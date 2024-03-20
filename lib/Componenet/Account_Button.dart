import 'package:flutter/material.dart';
class AccountButtom extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final String icon;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;

  const AccountButtom({
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
      child: Container(
        height: 50,
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  title,
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),
            Icon(
          Icons.arrow_forward,
          color: Colors.black,
          size: 30,
            )
          ],
        ),
    )
    );
  }
}
