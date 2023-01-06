import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orange_dc/blocs/auth/login/login_cubit.dart';
import 'package:orange_dc/config/app_colors.dart';
import 'package:orange_dc/views/screens/main_screen/00_main_layout_screen.dart';
import 'package:orange_dc/views/widgets/custom_text_field.dart';
import 'package:orange_dc/views/widgets/heading_text.dart';
import 'package:orange_dc/views/widgets/main_botton.dart';
import 'package:orange_dc/views/widgets/or_divider.dart';
import '../../widgets/custom_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
       child: Scaffold(
         body: Padding(
           padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
           child: ListView(
             physics: const BouncingScrollPhysics(),
             children: [

               const SizedBox(height: 5,),
               HeadingText(),
               const SizedBox(height: 55,),

               CustomText(fontSize: 33, text: 'Login',fontWeight: FontWeight.w500,),
               const SizedBox(height: 25,),

               CustomTextField(label: 'E-mail', hint: 'Enter your E-mail',controller: context.read<LoginCubit>().emailController,),
               const SizedBox(height: 20,),

               CustomTextField(label: "Password", hint: 'Enter your Password',obscure: true, controller: context.read<LoginCubit>().passwordController,),
               const SizedBox(height: 12,),

               Text('Forgot Password?', style: TextStyle(color: Colors.deepOrange , fontSize: 17, fontWeight: FontWeight.w500 ),),
               const SizedBox(height: 60,),

               MainButton(
                 lable: BlocConsumer<LoginCubit,LoginState>(
                   builder: (BuildContext context, state) {
                     if(state is LoginLoading) return const CircularProgressIndicator(color: Colors.white,);
                     return const Text("Login",style: TextStyle(color: Colors.white, fontSize: 21,fontWeight: FontWeight.w500),);
                 },
                   listener: (BuildContext context, Object? state) {
                     if(state is LoginSuccess) Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_)=> MainLayout()), (route) => false);
                   },),
                 onTap: () async {
                   // Navigator.push(context, MaterialPageRoute(builder: (context)=> MainLayout())) ;
                   await context.read<LoginCubit>().loginPost(context.read<LoginCubit>().emailController.text, context.read<LoginCubit>().passwordController.text, "/login",context);
                 },),
               const SizedBox(height: 15,),

               OrDivider(),
               const SizedBox(height: 15,),

               MainButton(
                 onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> MainLayout()));},
                 lable: Text("Sign up",style: TextStyle(color: Colors.deepOrange, fontSize: 21,fontWeight: FontWeight.w500),),
                 color: CustomTheme.getInstance(context).primaryColor(),border: Border.all(color: Colors.deepOrange,width: 2),),

             ],
           ),
         ),
       ),
    );
  }
}


