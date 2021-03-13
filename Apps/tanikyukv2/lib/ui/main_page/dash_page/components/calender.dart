import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:tanikyukv2/constants.dart';

class Calender extends StatefulWidget {
  // Calender({Key key, this.title}) : super(key: key);

  // final String title;

  @override
  _CalenderState createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  //Map<DateTime, List> _events;
  //List _selectedEvents;
  AnimationController _animationController;
  CalendarController _calendarController;
  @override
  void initState() {
    super.initState();
    _calendarController = CalendarController();

    // _animationController = AnimationController(
    // duration: const Duration(milliseconds: 400), vsync: this,
    //);

    // _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _calendarController.dispose();
    super.dispose();
  }

  void _onDaySelected(DateTime day, List events, List holidays) {
    print('CALLBACK: _onDaySelected');
    setState(() {
      //_selectedEvents = events;
    });
  }

  void _onVisibleDaysChanged(
      DateTime first, DateTime last, CalendarFormat format) {
    print('CALLBACK: _onVisibleDaysChanged');
  }

  void _onCalendarCreated(
      DateTime first, DateTime last, CalendarFormat format) {
    print('CALLBACK: _onCalendarCreated');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _buildTableCalendar(),
    );
  }

  Widget _buildTableCalendar() {
    return TableCalendar(
      calendarController: _calendarController,
      //events: _events,
      //holidays: _holidays,
      initialCalendarFormat: CalendarFormat.week,
      startingDayOfWeek: StartingDayOfWeek.monday,
      availableCalendarFormats: const {
        // CalendarFormat.twoWeeks: 'Weeks',
        CalendarFormat.week: 'Days',
      },
      calendarStyle: CalendarStyle(
        //contentDecoration:
        // BoxDecoration(borderRadius: BorderRadius.circular(16)),
        selectedColor: kPrimaryColor,
        todayColor: kSecondColor,
        markersColor: Colors.brown[700],
        outsideDaysVisible: false,
      ),
      headerStyle: HeaderStyle(
        formatButtonTextStyle:
            TextStyle().copyWith(color: Colors.white, fontSize: 14.0),
        formatButtonDecoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
      onDaySelected: _onDaySelected,
      onVisibleDaysChanged: _onVisibleDaysChanged,
      onCalendarCreated: _onCalendarCreated,
    );
  }
}
