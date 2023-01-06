import 'package:flutter/material.dart';
import 'package:orange_dc/config/app_colors.dart';

class MainButton extends StatelessWidget {

  Widget lable;
  Color color;
  double height;
  Border? border;
  GestureTapCallback? onTap;
  MainButton({
    Key? key ,
    required this.lable,
    this.color = Colors.deepOrange,
    this.height = 60,
    this.onTap,
    this.border,
  })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      child: Container(
        alignment: Alignment.center,
        height: height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(15),
            border: border
        ),
        child: lable,
      ),
    );
  }
}
