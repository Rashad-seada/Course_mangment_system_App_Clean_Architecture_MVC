import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:orange_dc/views/widgets/custom_appbar.dart';
import 'package:orange_dc/views/widgets/custom_text.dart';

import '../../../models/news_model.dart';
import '../../widgets/news_card.dart';
import '../../widgets/news_card_place_holder.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 20),
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: [
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(text: "News",fontSize: 32,fontWeight: FontWeight.w400,),
              ],
            ),
            SizedBox(height: 20,),

            Container(
              width: MediaQuery.of(context).size.width,
              height: 620,
              child: FutureBuilder(
                  future: getAllNew(),
                  builder: (context,AsyncSnapshot<NewsModel> snapshot){
                    if(snapshot.connectionState == ConnectionState.done){
                      return ListView.builder(
                          physics: BouncingScrollPhysics(),
                          itemCount: snapshot.data!.data!.length,
                          itemBuilder: (context , index){
                        return AnimationConfiguration.staggeredList(
                            position: index,
                            child: SlideAnimation(
                                duration: Duration(milliseconds: 500),
                                child: FadeInAnimation(
                                    duration: Duration(milliseconds: 500),
                                    child: NewsCard(data: snapshot.data!.data![index],)
                                )
                            )
                        );
                      });
                    }else{
                      return Column(
                        children: [
                          NewsCardPlaceHolder(),
                          NewsCardPlaceHolder(),
                        ],
                      );
                    }
                  }
              ),
            )

        ],
      ),
    );
  }
}
