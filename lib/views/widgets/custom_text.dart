import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  Color? color;
  double fontSize;
  String text;
  FontWeight fontWeight;
  TextAlign? textAlign;
  CustomText({Key? key ,this.color ,required this.fontSize ,required this.text ,this.fontWeight = FontWeight.w500 ,this.textAlign }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
