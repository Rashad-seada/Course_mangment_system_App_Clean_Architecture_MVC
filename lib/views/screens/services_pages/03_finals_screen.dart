import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orange_dc/blocs/auth/exam/exam_cubit.dart';
import 'package:orange_dc/views/widgets/custom_appbar.dart';
import '../../../models/lecture_model.dart';
import '../../widgets/appointment_place_holder_card.dart';
import '../../widgets/custom_text.dart';

class FinalsScreen extends StatelessWidget {
  const FinalsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView(
        children: [

          Container(
              padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
              child: CustomAppbar(
                title: 'Finals',
              )),

          const SizedBox(
              height: 5,
            ),

          // Container(
          //   width: double.infinity,
          //   child: BlocConsumer(
          //     listener: (BuildContext context, Object? state) {
          //
          //     },
          //     builder: (BuildContext context, state) {
          //
          //       if(state is ExamIsLoading){
          //         return Column(
          //           children: [
          //             AppointmentPlaceHolderCard(),
          //             AppointmentPlaceHolderCard(),
          //             AppointmentPlaceHolderCard(),
          //           ],
          //         );
          //
          //       }else if(state is ExamHasData){
          //
          //         switch(){
          //           case :{
          //
          //           }
          //           case :{
          //
          //           }
          //         }
          //
          //       }else{
          //         return ;
          //
          //       }
          //
          //     },
          //   ),
          // ),
        ],
      ),
    ));
  }
}
