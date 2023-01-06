import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:orange_dc/config/app_colors.dart';

class FAQPlaceHolder extends StatelessWidget {
  const FAQPlaceHolder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width,
      height: 80,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: CustomTheme.getInstance(context).secondaryColor(),
        border: Border.all(width: .15,color: Colors.grey.withOpacity(.3))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              FadeShimmer(
                height: 10,
                width: 250,
                radius: 15,
                highlightColor: Colors.grey.withOpacity(.8),
                baseColor: Colors.grey.withOpacity(.2),
              ),
            ],
          ),
          SizedBox(height: 13,),
          FadeShimmer(
            millisecondsDelay: 0,
            height: 10,
            width: 220,
            radius: 15,
            highlightColor: Colors.grey.withOpacity(.8),
            baseColor: Colors.grey.withOpacity(.2),
          )
        ],
      ),
    );
  }
}
