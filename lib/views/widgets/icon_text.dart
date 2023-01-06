import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  IconData icon;
  String text;
  Color iconColor;
  IconText({Key? key, required this.icon , required this.text , required this.iconColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
      Icon(icon,color: iconColor,),
      SizedBox(width: 3,),
      Text(text),
    ],);
  }
}
