import 'package:flutter/material.dart';
import 'package:orange_dc/models/news_model.dart';

import '../../config/app_colors.dart';

class NewsCard extends StatelessWidget {
  Data data;

  NewsCard({Key? key ,required this.data}) : super(key: key);

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
              offset: Offset(5,5),
              blurRadius: 20,
              spreadRadius: 5,
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
              color: CustomTheme.getInstance(context).primaryColor(), border: Border.all(color: Colors.grey.withOpacity(0.1),width: .5),
              image: DecorationImage(image: NetworkImage("${data.imageUrl}"),fit: BoxFit.cover),
                boxShadow: [
                  BoxShadow(
                    color: CustomTheme.getInstance(context).shadowColor(),
                    offset: Offset(10,10),
                    blurRadius: 20,
                    spreadRadius: 10,
                  )
                ]
            ),
          ),
          SizedBox(height: 6,),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 320,
                height: 70,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Text("${data.title}",maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.deepOrange,fontSize: 24,fontWeight: FontWeight.w500),),
                    SizedBox(height: 5,),
                    Text("${data.body}",maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
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
