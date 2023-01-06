import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orange_dc/blocs/note/note_cubit.dart';
import 'package:orange_dc/views/widgets/custom_appbar.dart';
import 'package:orange_dc/views/widgets/custom_text.dart';
import 'package:orange_dc/views/widgets/custom_text_field.dart';
import 'package:orange_dc/views/widgets/main_botton.dart';

class AddNoteScreen extends StatelessWidget {
  const AddNoteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // context.read<NoteCubit>().addNote(
    //   title: context.read<NoteCubit>().titleController.text,
    //   body: context.read<NoteCubit>().bodyController.text,
    //   creationTime: context.read<NoteCubit>().date,
    // );
    return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: ListView(
              physics: NeverScrollableScrollPhysics(),
              children: [

                CustomAppbar(title: 'Add note'),
                SizedBox(height: 35,),

                CustomTextField(
                    controller: context.read<NoteCubit>().titleController,
                    label: 'Title', hint: 'Enter Title'),
                SizedBox(height: 20,),

                CustomTextField(
                    controller: context.read<NoteCubit>().bodyController,
                    hint: 'Description' ,insidePadding: EdgeInsets.symmetric(vertical: 25,horizontal: 17),maxLines: 8,),
                SizedBox(height: 20,),

                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 110),
                    child: MainButton(
                      lable: Text("Add",style: TextStyle(color: Colors.white, fontSize: 21,fontWeight: FontWeight.w500),),
                      onTap: () {
                          context.read<NoteCubit>().addNote(
                            title: context.read<NoteCubit>().titleController.text,
                            body: context.read<NoteCubit>().bodyController.text,
                            creationTime: context.read<NoteCubit>().date,
                          );
                          context.read<NoteCubit>().titleController.clear();
                          context.read<NoteCubit>().bodyController.clear();
                          Navigator.pop(context);

                      },
                    )),
              ],),
          ),
        )
    );
  }
}
