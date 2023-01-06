import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:flutter/material.dart';

import '../../config/app_colors.dart';

class TermsPlaceHolder extends StatelessWidget {
  const TermsPlaceHolder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 700,
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      decoration: BoxDecoration(
          color: CustomTheme.getInstance(context).secondaryColor(),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: .15,color: Colors.grey.withOpacity(.3))

      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FadeShimmer(
            height: 10,
            width: 135,
            radius: 15,
            highlightColor: Colors.grey.withOpacity(.8),
            baseColor: Colors.grey.withOpacity(.2),
          ),
          SizedBox(),
          FadeShimmer(
            height: 10,
            width: 260,
            radius: 15,
            highlightColor: Colors.grey.withOpacity(.8),
            baseColor: Colors.grey.withOpacity(.2),
          ),
          FadeShimmer(
            height: 10,
            width: 300,
            radius: 15,
            highlightColor: Colors.grey.withOpacity(.8),
            baseColor: Colors.grey.withOpacity(.2),
          ),
          FadeShimmer(
            height: 10,
            width: 280,
            radius: 15,
            highlightColor: Colors.grey.withOpacity(.8),
            baseColor: Colors.grey.withOpacity(.2),
          ),
          FadeShimmer(
            height: 10,
            width: 310,
            radius: 15,
            highlightColor: Colors.grey.withOpacity(.8),
            baseColor: Colors.grey.withOpacity(.2),
          ),
          FadeShimmer(
            height: 10,
            width: 300,
            radius: 15,
            highlightColor: Colors.grey.withOpacity(.8),
            baseColor: Colors.grey.withOpacity(.2),
          ),
          FadeShimmer(
            height: 10,
            width: 260,
            radius: 15,
            highlightColor: Colors.grey.withOpacity(.8),
            baseColor: Colors.grey.withOpacity(.2),
          ),
          FadeShimmer(
            height: 10,
            width: 310,
            radius: 15,
            highlightColor: Colors.grey.withOpacity(.8),
            baseColor: Colors.grey.withOpacity(.2),
          ),
          FadeShimmer(
            height: 10,
            width: 300,
            radius: 15,
            highlightColor: Colors.grey.withOpacity(.8),
            baseColor: Colors.grey.withOpacity(.2),
          ),
          FadeShimmer(
            height: 10,
            width: 260,
            radius: 15,
            highlightColor: Colors.grey.withOpacity(.8),
            baseColor: Colors.grey.withOpacity(.2),
          ),
          FadeShimmer(
            height: 10,
            width: 310,
            radius: 15,
            highlightColor: Colors.grey.withOpacity(.8),
            baseColor: Colors.grey.withOpacity(.2),
          ),
          FadeShimmer(
            height: 10,
            width: 300,
            radius: 15,
            highlightColor: Colors.grey.withOpacity(.8),
            baseColor: Colors.grey.withOpacity(.2),
          ),
          FadeShimmer(
            height: 10,
            width: 260,
            radius: 15,
            highlightColor: Colors.grey.withOpacity(.8),
            baseColor: Colors.grey.withOpacity(.2),
          ),
          FadeShimmer(
            height: 10,
            width: 280,
            radius: 15,
            highlightColor: Colors.grey.withOpacity(.8),
            baseColor: Colors.grey.withOpacity(.2),
          ),
          FadeShimmer(
            height: 10,
            width: 300,
            radius: 15,
            highlightColor: Colors.grey.withOpacity(.8),
            baseColor: Colors.grey.withOpacity(.2),
          ),
          FadeShimmer(
            height: 10,
            width: 260,
            radius: 15,
            highlightColor: Colors.grey.withOpacity(.8),
            baseColor: Colors.grey.withOpacity(.2),
          ),
          FadeShimmer(
            height: 10,
            width: 310,
            radius: 15,
            highlightColor: Colors.grey.withOpacity(.8),
            baseColor: Colors.grey.withOpacity(.2),
          ),
          FadeShimmer(
            height: 10,
            width: 300,
            radius: 15,
            highlightColor: Colors.grey.withOpacity(.8),
            baseColor: Colors.grey.withOpacity(.2),
          ),
          FadeShimmer(
            height: 10,
            width: 260,
            radius: 15,
            highlightColor: Colors.grey.withOpacity(.8),
            baseColor: Colors.grey.withOpacity(.2),
          ),
          FadeShimmer(
            height: 10,
            width: 310,
            radius: 15,
            highlightColor: Colors.grey.withOpacity(.8),
            baseColor: Colors.grey.withOpacity(.2),
          ),
          FadeShimmer(
            height: 10,
            width: 300,
            radius: 15,
            highlightColor: Colors.grey.withOpacity(.8),
            baseColor: Colors.grey.withOpacity(.2),
          ),
          FadeShimmer(
            height: 10,
            width: 260,
            radius: 15,
            highlightColor: Colors.grey.withOpacity(.8),
            baseColor: Colors.grey.withOpacity(.2),
          ),
          FadeShimmer(
            height: 10,
            width: 310,
            radius: 15,
            highlightColor: Colors.grey.withOpacity(.8),
            baseColor: Colors.grey.withOpacity(.2),
          ),
          FadeShimmer(
            height: 10,
            width: 300,
            radius: 15,
            highlightColor: Colors.grey.withOpacity(.8),
            baseColor: Colors.grey.withOpacity(.2),
          ),
          FadeShimmer(
            height: 10,
            width: 260,
            radius: 15,
            highlightColor: Colors.grey.withOpacity(.8),
            baseColor: Colors.grey.withOpacity(.2),
          ),


        ],
      ),


    );
  }
}
