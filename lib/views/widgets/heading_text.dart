import 'package:flutter/material.dart';

import 'custom_text.dart';

class HeadingText extends StatelessWidget {
  double fontSize;

  HeadingText({Key? key , this.fontSize = 28}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText( text:"Orange ",color: Colors.deepOrange, fontSize: fontSize , ),
          CustomText( text:"Digital Center", fontSize: fontSize , ),


        ],
      ),
    );
  }
}
