import 'package:flutter/material.dart';
import 'package:orange_dc/config/app_colors.dart';
import 'package:orange_dc/models/lecture_model.dart';
import 'icon_text.dart';

class AppointmentCard extends StatelessWidget {
  LectureData data;
  AppointmentCard({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 6,right: 20,left: 20,top: 14),
      padding: EdgeInsets.all(12),
      width: MediaQuery.of(context).size.width,
      height: 110,
      decoration: BoxDecoration(
        color: CustomTheme.getInstance(context).secondaryColor(),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: CustomTheme.getInstance(context).shadowColor(),
            offset: Offset(10,10),
            blurRadius: 20,
            spreadRadius: 10,
          )
        ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text('${data.lectureSubject}',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 22),),

              IconText(icon: Icons.timer_outlined, text: '2hrs', iconColor: CustomTheme.getInstance(context).txtColor(),),

            ],),


          Column(
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [

                  Text("Lecture Date"),

                  Text("Start Time"),

                  Text("End Time"),

                ],),
              SizedBox(height: 2),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  IconText(icon: Icons.date_range_rounded, text: '${data.lectureDate}', iconColor: CustomTheme.getInstance(context).txtColor(),),

                  IconText(icon: Icons.access_time, text: '${data.lectureStartTime}', iconColor: Colors.greenAccent,),

                  IconText(icon: Icons.access_time, text: '${data.lectureEndTime}', iconColor: Colors.redAccent,),

                ],),

            ],
          ),

        ],
      ),
    );
  }
}
