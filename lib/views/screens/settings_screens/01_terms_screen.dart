import 'package:flutter/material.dart';
import 'package:orange_dc/config/app_colors.dart';
import 'package:orange_dc/views/widgets/custom_appbar.dart';

import '../../../models/app_info/terms_model.dart';
import '../../widgets/terms_place_holder.dart';

class TermsScreen extends StatelessWidget {
  const TermsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [

              CustomAppbar(title: "Terms and Conditions",fontSize: 24,),
              SizedBox(height: 15,),

              Container(
                width: MediaQuery.of(context).size.width,
                height: 700,
                child: FutureBuilder(
                    future: getTerms(),
                    builder: (context , AsyncSnapshot<dynamic> snapShot){
                      if(snapShot.hasData) {
                        return Container(
                          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 30),
                          decoration: BoxDecoration(
                            color: CustomTheme.getInstance(context).secondaryColor(),
                            borderRadius: BorderRadius.circular(15),
                              border: Border.all(width: .15,color: Colors.grey.withOpacity(.3))

                          ),
                          child: ListView(
                            physics: BouncingScrollPhysics(),
                            children: [
                              Text(snapShot.data!.data!.terms!),
                            ],
                          ),
                        );
                      } else {
                        return TermsPlaceHolder();
                      }
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
