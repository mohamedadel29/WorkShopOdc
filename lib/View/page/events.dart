import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class  Events extends StatelessWidget {
  const Events({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SfCalendar(
          view: CalendarView.month,
        ),
      ),
    );
  }
}
