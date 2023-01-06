import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:orange_dc/views/widgets/service_card.dart';
import '../../models/service_model.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          width: MediaQuery.of(context).size.width,
          height: 600,
          padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
          child: GridView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: ServicesList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 2/1.6,
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
              ),
              itemBuilder: (context, index){
                return AnimationConfiguration.staggeredGrid(
                    position: index,
                    columnCount: ServicesList.length,
                    child: FadeInAnimation(
                      duration: Duration(milliseconds: 500),
                      child: SlideAnimation(
                          verticalOffset: 50.0,
                          curve: Curves.easeInOut,
                          duration: Duration(milliseconds: 500),
                          child: ServiceCard( service:ServicesList[index])),
                    ));
              }),
        );


    ;
  }
}
