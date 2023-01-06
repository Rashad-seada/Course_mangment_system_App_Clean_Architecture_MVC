import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:orange_dc/views/widgets/custom_appbar.dart';
import 'package:orange_dc/views/widgets/custom_text_field.dart';
import 'package:orange_dc/views/widgets/main_botton.dart';

class SupportScreen extends StatelessWidget {
  SupportScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController issueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [

                    CustomAppbar(title: 'Support',fontSize: 34,),
                    SizedBox(height: 30,),

                    CustomTextField(hint: 'Enter your name',label: 'Name',controller: nameController,),
                    SizedBox(height: 20,),

                    CustomTextField(hint: "Enter your e-mail",label: 'E-Mail',controller: emailController,),
                    SizedBox(height: 20,),

                    CustomTextField(hint: 'What\'s making you unhappy?',insidePadding: EdgeInsets.symmetric(vertical: 25,horizontal: 17),maxLines: 8,controller: issueController,),
                    SizedBox(height: 50,),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 100),
                      child: MainButton(
                          lable: Text('Submit',style: TextStyle(fontSize: 20,color: Colors.white),),
                          onTap: (){
                            Fluttertoast.showToast(
                                msg: "Thank you for sharing you opinion",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.TOP,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.green,
                                textColor: Colors.white,
                                fontSize: 16.0
                            );
                            Navigator.pop(context);
                          },
                      ),
                    )

                ],
              ),
            ),
        )
    );
  }
}
