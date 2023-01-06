import 'package:flutter/material.dart';
import 'package:orange_dc/views/widgets/custom_appbar.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView(
              physics: NeverScrollableScrollPhysics(),
              children: [

                  CustomAppbar(title: "Event"),
                  SizedBox(height: 20,),

                  Container(
                      width: MediaQuery.of(context).size.width,
                      height: 700,
                      child: SfCalendar(
                        todayHighlightColor: Colors.deepOrange,
                        view: CalendarView.month,
                      )
                  ),

              ],
            ),
          ),
        )
    );
  }

}
