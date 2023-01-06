import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:flutter/material.dart';

import '../../config/app_colors.dart';

class NewsCardPlaceHolder extends StatelessWidget {
  const NewsCardPlaceHolder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      width: MediaQuery.of(context).size.width,
      height: 250,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: CustomTheme.getInstance(context).secondaryColor(),
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
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: CustomTheme.getInstance(context).primaryColor(),
                boxShadow: [
                  BoxShadow(
                    color: CustomTheme.getInstance(context).shadowColor(),
                    offset: Offset(10,10),
                    blurRadius: 20,
                    spreadRadius: 10,
                  )
                ]
            ),
            child: Icon(Icons.image_outlined,size: 50,),
          ),
          SizedBox(height: 8,),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 320,
                height: 70,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      SizedBox(height: 5,),
                      FadeShimmer(
                        height: 10,
                        width: 80,
                        radius: 15,
                        highlightColor: Colors.grey.withOpacity(.8),
                        baseColor: Colors.grey.withOpacity(.2),
                      ),
                      SizedBox(height: 10,),
                      FadeShimmer(
                        height: 8,
                        width: 330,
                        radius: 15,
                        highlightColor: Colors.grey.withOpacity(.8),
                        baseColor: Colors.grey.withOpacity(.2),
                      ),
                      SizedBox(height: 6,),
                      FadeShimmer(
                        height: 8,
                        width: 250,
                        radius: 15,
                        highlightColor: Colors.grey.withOpacity(.8),
                        baseColor: Colors.grey.withOpacity(.2),
                      ),
                    ]
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
