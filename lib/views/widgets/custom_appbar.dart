import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomAppbar extends StatelessWidget {
  double fontSize ;
  String title ;
  CustomAppbar({Key? key ,required this.title , this.fontSize = 35}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: (){
              Navigator.pop(context);

            },
            icon: Icon(Icons.arrow_back_ios_new_rounded)),
        CustomText(fontSize: fontSize, text: title ,fontWeight: FontWeight.w500,),
        SizedBox(width: 35,)
      ],
    );
  }
}
