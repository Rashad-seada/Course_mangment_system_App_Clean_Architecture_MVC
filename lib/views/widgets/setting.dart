import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  String title;
  GestureTapCallback? onTap;
  IconData icon;
  Widget? screen;


  Setting({
    Key? key ,
    required this.title ,
    this.onTap ,
    this.icon = Icons.arrow_forward_ios_rounded,
    this.screen})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        child: Column(
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title, style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 19),),
                Icon(icon , color: Colors.grey,)
              ],
            ),
            SizedBox(height: 15,),

            Divider(thickness: 1,),
          ],
        ),
      ),
    );
  }
}
