import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:orange_dc/config/app_colors.dart';

class AppointmentPlaceHolderCard extends StatelessWidget {
  AppointmentPlaceHolderCard({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 6,right: 20,left: 20,top: 14),
      padding: EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width,
      height: 110,
      decoration: BoxDecoration(
          color: CustomTheme.getInstance(context).secondaryColor(),
          borderRadius: BorderRadius.circular(15)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              FadeShimmer(
                height: 15,
                width: 80,
                radius: 30,
                highlightColor: Colors.grey.withOpacity(.8),
                baseColor: Colors.grey.withOpacity(.2),
              ),

              FadeShimmer(
                height: 15,
                width: 60,
                radius: 15,
                highlightColor: Colors.grey.withOpacity(.8),
                baseColor: Colors.grey.withOpacity(.2),
              ),

            ],),


          Column(
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  FadeShimmer(
                    height: 15,
                    width: 70,
                    radius: 15,
                    highlightColor: Colors.grey.withOpacity(.8),
                    baseColor: Colors.grey.withOpacity(.2),
                  ),

                  FadeShimmer(
                    height: 15,
                    width: 70,
                    radius: 15,
                    highlightColor: Colors.grey.withOpacity(.8),
                    baseColor: Colors.grey.withOpacity(.2),
                  ),

                  FadeShimmer(
                    height: 15,
                    width: 70,
                    radius: 15,
                    highlightColor: Colors.grey.withOpacity(.8),
                    baseColor: Colors.grey.withOpacity(.2),
                  ),

                ],),
              SizedBox(height: 8),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  FadeShimmer(
                    height: 15,
                    width: 80,
                    radius: 15,
                    highlightColor: Colors.grey.withOpacity(.8),
                    baseColor: Colors.grey.withOpacity(.2),
                  ),

                  FadeShimmer(
                    height: 15,
                    width: 80,
                    radius: 15,
                    highlightColor: Colors.grey.withOpacity(.8),
                    baseColor: Colors.grey.withOpacity(.2),
                  ),

                  FadeShimmer(
                    height: 15,
                    width: 80,
                    radius: 15,
                    highlightColor: Colors.grey.withOpacity(.8),
                    baseColor: Colors.grey.withOpacity(.2),
                  ),
                ],),

            ],
          ),

        ],
      ),
    );
  }
}
