import 'package:flutter/material.dart';
import 'package:orange_dc/views/widgets/custom_text.dart';

import '../../../models/lecture_model.dart';
import '../../widgets/appointment_place_holder_card.dart';
import '../../widgets/custom_appbar.dart';

class MidtermsScreen extends StatelessWidget {
  const MidtermsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: ListView(
            children: [

              Container(
                  padding: const EdgeInsets.only(right: 20,left: 20,top: 20),
                  child: CustomAppbar(title: 'Midterms',)),
              SizedBox(height: 5,),

              Container(
                width: MediaQuery.of(context).size.width,
                height: 650,
                child: FutureBuilder(
                    future: getAllLectures(),
                    builder: (context,snapshot){
                      if(snapshot.hasData){
                        return Center(child: CustomText(fontSize: 24, text: "No Midterms"),);
                      }else{
                        return Column(
                          children: [
                            AppointmentPlaceHolderCard(),
                            AppointmentPlaceHolderCard(),
                            AppointmentPlaceHolderCard(),

                          ],
                        );
                      }
                    }
                ),
              )

            ],
          ),
        )
    );
  }
}
