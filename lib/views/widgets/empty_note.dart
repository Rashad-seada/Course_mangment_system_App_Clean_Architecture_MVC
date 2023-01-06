import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'custom_text.dart';

class EmptyNote extends StatelessWidget {
  const EmptyNote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [


        Container(
            alignment: Alignment.center,
            height: 300,
            child: Lottie.asset('images/list.json',repeat: false,fit: BoxFit.fitHeight)),
        SizedBox(height: 0,),

        Row(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            CustomText(fontSize: 33, text: 'Daily Notes' ,fontWeight: FontWeight.w500 ,textAlign: TextAlign.center,color: Colors.grey, ),
          ],
        ),
        SizedBox(height: 30,),

        Row(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            CustomText(fontSize: 20, text: 'You don\'t have any Notes\n Create some !' ,fontWeight: FontWeight.w400 ,textAlign: TextAlign.center,color: Colors.grey, ),
          ],
        ),
        SizedBox(height: 110,),

      ],);
  }
}
