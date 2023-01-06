import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:orange_dc/views/widgets/custom_appbar.dart';

import '../../../config/app_colors.dart';

class OurPartnersScreen extends StatelessWidget {
  const OurPartnersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
            child: ListView(
              physics: NeverScrollableScrollPhysics(),
              children: [

                  CustomAppbar(title: 'Our Partners',fontSize: 28,),
                  SizedBox(height: 20,),

                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    height: 700,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                        itemCount: partners.length,
                        physics:  BouncingScrollPhysics(),
                        itemBuilder: (context,index){
                          return AnimationConfiguration.staggeredList(
                            position: index,
                            child: SlideAnimation(
                                duration: Duration(milliseconds: 500),
                                child: FadeInAnimation(
                                duration: Duration(milliseconds: 500),
                                child: InkWell(
                                  //onTap: ()=> lunchURL('https://www.orange.eg/en/services/'),
                                  child: Container(
                                    margin: EdgeInsets.only(bottom: 15),
                                    height: 250,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(image: AssetImage(partners[index])),
                                        color: CustomTheme.getInstance(context).secondaryColor()
                                    ),

                                  child: Container(
                                    height: 250,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                      Colors.grey.withOpacity(.6),
                                      Colors.grey.withOpacity(.4),
                                      Colors.grey.withOpacity(.2),
                                      Colors.transparent
                                      ],
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter,
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                  ))
                                  ),
                                ),
                              ),
                            ),
                          );
                    }),
                  ),
              ],
            ),
          ),
        )
    );
  }
}

List partners = [
  'images/GAP.jpg',
  'images/30 North.jpg',
  'images/B.tech.jpg',
  'images/Rizkalla.jpg',
  'images/London cab.jpg',
];

// lunchURL(url) async {
//   if(await canLaunch(url)){
//       await launch(url);
//   }else{
//       throw "Couldn\'t launch ${url}";
//   }
// }