import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Events extends StatefulWidget {
  @override
  _EventsState createState() => _EventsState();
}

class _EventsState extends State<Events> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xff81c684),
        title: Text (
            'Event Calender',
          style: TextStyle(
            fontSize: 25.0,
            fontFamily: 'SourceSansPro',
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TableCalendar(
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: DateTime.now(),
            calendarFormat: _calendarFormat,
            selectedDayPredicate: (day) {

              return isSameDay(_selectedDay, day);
            },
            onDaySelected: (selectedDay, focusedDay) {
              if (!isSameDay(_selectedDay, selectedDay)) {

                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay;
                });
              }
            },
            onFormatChanged: (format) {
              if (_calendarFormat != format) {

                setState(() {
                  _calendarFormat = format;
                });
              }
            },
            onPageChanged: (focusedDay) {

              _focusedDay = focusedDay;
            },
          ),
          Divider(
            thickness: 1,
          ),
          Card(
            child: Text(
              'Upcoming Events!',
              style: TextStyle(
               fontWeight: FontWeight.bold,
               fontSize: 20,
              ),
            ),
          ),
          SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  '1st to 31st of August 2021',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              Text(
                'Plastic Free August! (Do not use plastic!)',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 20),
            ],
          )
        ],
      ),
    );
  }
}