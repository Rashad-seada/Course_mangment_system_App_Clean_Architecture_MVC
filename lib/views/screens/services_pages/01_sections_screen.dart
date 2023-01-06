import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:orange_dc/views/widgets/custom_appbar.dart';
import '../../../models/lecture_model.dart';
import '../../widgets/appointment_card.dart';
import '../../widgets/appointment_place_holder_card.dart';

class SectionsScreen extends StatelessWidget {
  const SectionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: ListView(
            physics: NeverScrollableScrollPhysics(),
            children: [

              Padding(
                padding: const EdgeInsets.only(right: 20,left: 20,top: 20),
                child: CustomAppbar(title: "Sections"),
              ),
              SizedBox(height: 10,),

              Container(
                margin: const EdgeInsets.symmetric(horizontal: 0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 720,
                  child: FutureBuilder(
                      future: getAllLectures(),
                      builder: (context,snapshot){
                        if(snapshot.hasData) {
                          return ListView.builder(
                              physics: BouncingScrollPhysics(),
                              itemCount: snapshot.data!.data!.length,
                              itemBuilder: (context,index){
                                return AnimationConfiguration.staggeredList(
                                    position: index,
                                    child: SlideAnimation(
                                        duration: Duration(milliseconds: 500),
                                        child: ScaleAnimation(
                                            duration: Duration(milliseconds: 300),
                                            child: FadeInAnimation(
                                                duration: Duration(milliseconds: 500),
                                                child: AppointmentCard(data: snapshot.data!.data![index],)))));
                              }
                          );
                        }else{
                          return Column(
                            children: [

                              AppointmentPlaceHolderCard(),
                              AppointmentPlaceHolderCard(),
                              AppointmentPlaceHolderCard(),

                            ],);
                        }
                      }
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}
