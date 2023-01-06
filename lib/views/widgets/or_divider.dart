import 'package:flutter/material.dart';
import 'package:orange_dc/config/app_colors.dart';

class OrDivider extends StatelessWidget {

  String text;
  double thickness ;
  OrDivider({Key? key , this.text = "OR" , this.thickness = 0.7}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(child: Divider(color: CustomTheme.getInstance(context).txtColor(),height: 10,thickness: thickness,)),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: Text(text, style: const TextStyle(fontSize: 20 , fontWeight: FontWeight.w400),)),
        Expanded(child: Divider(color: CustomTheme.getInstance(context).txtColor(), thickness: thickness,)),


      ],
    );
  }
}
