import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:orange_dc/config/app_colors.dart';
import 'package:orange_dc/views/screens/auth_screens/00_login_screen.dart';

import '../widgets/custom_text.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {

  @override
  void initState() {
    Timer(Duration(milliseconds: 1500), () {
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_)=> LoginScreen()), (route) => false);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:
        Scaffold(
          body: Center(
            child: AnimationConfiguration.staggeredList(
              position: 0,
              child: SlideAnimation(
                duration: Duration(milliseconds: 500),
                child: FadeInAnimation(
                  duration: Duration(milliseconds: 500),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          height: 150,
                          width: 150,
                          child: Image.asset('images/Orange.png',fit: BoxFit.fitHeight,)
                      ),
                      Container(
                          height: 100,
                          width: 2,
                          decoration: BoxDecoration(
                            color: CustomTheme.getInstance(context).txtColor()
                          ),

                      ),
                      SizedBox(width: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText( text:"Orange ",color: Color(0xffff6600), fontSize: 25 , ),
                          CustomText( text:"Digital Center", fontSize: 24 , ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
    );
  }
}
