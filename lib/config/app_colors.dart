import 'package:flutter/material.dart';

class CustomTheme {
  final BuildContext context;
  const CustomTheme(this.context);

  static CustomTheme getInstance(BuildContext context) => CustomTheme(context);

  Color primaryColor() {
    if(Theme.of(context).brightness == Brightness.light){
      return const Color(0xffffffff);
    } else {
      return const Color(0xff181a20);
    }
  }

  Color txtColor() {
    if(Theme.of(context).brightness == Brightness.light){
      return Colors.black;
    } else {
      return const Color(0xffffffff);
    }
  }

  Color secondaryColor() {
    if(Theme.of(context).brightness == Brightness.light){
      return const Color(0xfffafafa);
    } else {
      return const Color(0xff1f222a);
    }
  }

  Color SecTxtColor() {
    if(Theme.of(context).brightness == Brightness.light){
      return const Color(0xfffafafa);
    } else {
      return const Color(0xff9e9e9e);
    }
  }

  Color shadowColor() {
    if(Theme.of(context).brightness == Brightness.light){
      return  Colors.grey.withOpacity(.10);
    } else {
      return Colors.black.withOpacity(.15);
    }
  }

}


const Color bgColor = Color(0xffffffff);
const Color bgColorDark = Color(0xff181a20);

const Color txtColorDark = Colors.black;
const Color txtColor = Color(0xffffffff);



