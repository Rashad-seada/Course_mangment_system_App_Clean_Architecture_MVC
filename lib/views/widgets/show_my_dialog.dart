import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orange_dc/blocs/auth/login/login_cubit.dart';

import '../../config/app_colors.dart';
import '../screens/auth_screens/00_login_screen.dart';

showMyDialog(context){
  return showDialog(
    context: context,
    builder: (context)=> AlertDialog(
      backgroundColor: CustomTheme.getInstance(context).primaryColor(),
      title: const Text('Logout ?', style: TextStyle(color: Colors.deepOrange), ),
      content: const Text('Do you want to log out of your account ?'),
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_)=> LoginScreen()), (route) => false);
            context.read<LoginCubit>().passwordController.clear();
          },
          child: Text('Yes',style: TextStyle(color: CustomTheme.getInstance(context).txtColor()),),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(CustomTheme.getInstance(context).secondaryColor()),
            elevation: MaterialStateProperty.all(0),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('No' , style: TextStyle(color: Colors.deepOrange),),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(CustomTheme.getInstance(context).secondaryColor()),
            elevation: MaterialStateProperty.all(0),
          ),
        ),

      ],

    ),
  );;
}