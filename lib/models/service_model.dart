import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../views/screens/services_pages/00_lecture_screen.dart';
import '../views/screens/services_pages/01_sections_screen.dart';
import '../views/screens/services_pages/02_midterms_screen.dart';
import '../views/screens/services_pages/03_finals_screen.dart';
import '../views/screens/services_pages/04_events_screen.dart';
import '../views/screens/services_pages/05_notes_screen.dart';

class ServiceModel {
  Widget widget;
  String serviceName;
  Widget screen;
  ServiceModel({required this.widget,required this.serviceName,required this.screen});
}




List ServicesList = [

  ServiceModel(widget: SvgPicture.asset('images/lecture.svg',width: 55,height: 55,fit: BoxFit.fitWidth,), serviceName: "Lectures",screen: LectureScreen() ),
  ServiceModel(widget: SvgPicture.asset('images/sections.svg',width: 55,height: 40,fit: BoxFit.fitWidth,),serviceName: "Sections",screen: SectionsScreen()),
  ServiceModel(widget: SvgPicture.asset('images/midterm.svg',width: 55,height: 55,fit: BoxFit.fitWidth,),serviceName: "Midterms",screen: MidtermsScreen()),
  ServiceModel(widget: SvgPicture.asset('images/final.svg',width: 55,height: 55,fit: BoxFit.fitWidth,),serviceName: "Finals",screen: FinalsScreen()),
  ServiceModel(widget: SvgPicture.asset('images/event.svg',width: 55,height: 55,fit: BoxFit.fitWidth,),serviceName: "Events",screen: EventsScreen()),
  ServiceModel(widget: SvgPicture.asset('images/notes.svg',width: 55,height: 55,fit: BoxFit.fitWidth,),serviceName: "Notes",screen: NotesScreen()),

];


