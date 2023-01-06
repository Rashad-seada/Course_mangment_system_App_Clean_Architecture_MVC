import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:orange_dc/config/app_colors.dart';
import 'package:orange_dc/views/widgets/custom_appbar.dart';
import '../../../data/local/dummy_data.dart';
import '../../widgets/faq_place_holder.dart';

class FAQScreen extends StatelessWidget {
  const FAQScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: ListView(
              children: [

                CustomAppbar(title: 'FAQ'),
                SizedBox(height: 20,),

                FutureBuilder(
                    future: getFAQ(),
                    builder: (context ,AsyncSnapshot<dynamic> snapShot){
                      if(snapShot.hasData) {
                        return Container(
                        width: MediaQuery.of(context).size.width,
                        height: 400,

                        child: ListView.builder(
                            itemCount: snapShot.data.length,
                            itemBuilder: (context , index) {
                                return AnimationConfiguration.staggeredList(
                                  position: index,
                                  child: FadeInAnimation(
                                    duration: Duration(milliseconds: 400),
                                    child: SlideAnimation(
                                      verticalOffset: 50.0,
                                      curve: Curves.easeInOut,
                                      duration: Duration(milliseconds: 300),
                                      child: Container(
                                        width: MediaQuery.of(context).size.width,
                                        margin: EdgeInsets.only(bottom: 20,),
                                        decoration: BoxDecoration(
                                            color: CustomTheme.getInstance(context).secondaryColor(),
                                            borderRadius: BorderRadius.circular(15)
                                        ),
                                        child: ExpansionTile(
                                              iconColor: Colors.deepOrange,
                                              textColor: Colors.deepOrange,

                                              title: Container(
                                                  height: 70,
                                                  alignment: Alignment.center,
                                                  child: Text(snapShot.data[index]["Q"])),

                                              children: [
                                                Container(
                                                  padding: EdgeInsets.only(left: 18,bottom: 20),
                                                  alignment: Alignment.centerLeft,
                                                  child: Text(snapShot.data[index]["A"]),
                                                )
                                              ],
                                            ),
                                      ),
                                    ),
                                  ),
                                );
                        }),
                      );
                      } else
                        return  FAQPlaceHolder();
                    }


                )
              ],
            ),
          ),
        )
    );
  }
}
