import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import '../../../models/auth/login_model.dart';
import '../../../views/widgets/flutter_toast.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {

  LoginCubit() : super(LoginInitial());

  Dio api = Dio();
  String baseUrl = 'https://workshop.orangedigitalcenteregypt.com/api/v1';
  String loginEndPoint = '/login';
  String newsEndPoint = '/news';


  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  loginPost (String email, String password, String endPoint, BuildContext context,) async {

    emit(LoginLoading());

    final data = {
      "email": email,
      "password": password,
    };

    final response = await api.post(

      baseUrl + endPoint,
      options: Options(
          headers: data,
          //sendTimeout: 1,
          //receiveTimeout: 1,
      ),
      data: data,
    ).then((res) {

      if(res.statusCode == 200) {

        flutterToast(
            title: 'Login successfull',
            msg: 'You have been loged to your account successfully',
            context: context,
            isSuccess: true,
        );
        emit(LoginSuccess(loginModel: LoginModel.fromJson(res.data)));
        print(res.statusCode);

      }
    }).catchError((error){

        flutterToast(
            title: 'Login Falire',
            msg: 'You have been loged to your account successfully',
            context: context,
            isSuccess: false
        );
        emit(LoginError());
        print(error);

    });
  }
}
