import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orange_dc/views/screens/00_intro_screen.dart';
import 'package:orange_dc/views/screens/auth_screens/00_login_screen.dart';
import 'package:sizer/sizer.dart';
import 'blocs/auth/login/login_cubit.dart';
import 'blocs/note/note_cubit.dart';
import 'config/app_colors.dart';
import 'data/local/sqflite.dart';
import 'package:dartz/dartz.dart';

void main() {
  DatabaseProvider.db.initDB();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(

      builder: (BuildContext context, Orientation orientation, DeviceType deviceType) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (context)=> LoginCubit()),
            BlocProvider(create: (context)=> NoteCubit())
          ],
          child: MaterialApp(
              theme: ThemeData(
                  brightness: Brightness.light,
                  scaffoldBackgroundColor: bgColor,

              ),
              darkTheme: ThemeData(
                  brightness: Brightness.dark,
                  scaffoldBackgroundColor: bgColorDark,

          ),
              themeMode: ThemeMode.system,
              debugShowCheckedModeBanner: false,
              //initialRoute: "/",
              //routes: const {
              //},
              home: IntroScreen()),
        )
        ;
      },
    );
  }
}
