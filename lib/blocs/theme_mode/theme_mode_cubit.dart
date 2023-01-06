import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
part 'theme_mode_state.dart';

class ThemeModeCubit extends Cubit<ThemeModeState> {

  ThemeModeCubit() : super(ThemeModeInitial());

  late ThemeMode appTheme ;

  themeToggle(bool isDarkMode){
    if(isDarkMode == true) {
      emit(ThemeModeDark());
      return ThemeMode.dark;

    } else {
      emit(ThemeModeLight());
      return ThemeMode.light;
    }
  }

  initTheme(){
    if(ThemeMode.system == ThemeMode.dark){
      return ThemeMode.dark;
    }else{
      return ThemeMode.light;
    }
  }

}
