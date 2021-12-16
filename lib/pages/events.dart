import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:environcycle_prototype/ExtraUtility/CornerIcon.dart';

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
      backgroundColor: Colors.green[50],
        body: ListView(
          children: [
            Column(
              children: [
                SizedBox(height:30),
                Row(
                  children: [
                    SizedBox(width:10),
                    GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: CornerIcon(
                                height: 50,
                                width: 50,
                                child: Icon(
                                  Icons.keyboard_backspace, 
                                  color: Color.fromRGBO(48, 47, 48, 1.0), // Custom Black Colour
                                ),
                              ),
                            ),
                          SizedBox(width:45),
                          Text(
                            'EVENT CALENDAR',
                             style: TextStyle(
                               fontFamily: "Josefin",
                               letterSpacing: 1,
                               color: Color.fromRGBO(48, 47, 48, 1.0),
                               fontWeight: FontWeight.w700, 
                               fontSize: 22
                            ),
                            ),
                  ]
                ),
                SizedBox(height:10),
                Column(
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
                   ],
                ),

                // Calender^
                // all events and wordings are listed below here in a singlescrollchild widget


                      Divider(
                        thickness: 1,
                      ),
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Container(
                          width: 180,
                          child: Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
                            child: Text(
                              ' Upcoming Events!',
                              style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text('(psst! try scrolling me :D)'),
                      SizedBox(height: 20),
                      Column(
                          children: [ 
                              Text(
                                  '5th December 2021',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              Text(
                                'World Soil Day',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                  '1th December 2021',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              Text(
                                'International Mountain Day',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(height:20),
                              Text(
                                  '15th December 2021',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              Text(
                                'World Future Energy Summit',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(height:20),
                              Text(
                                  '2nd January 2022',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              Text(
                                'World Wetlands Day',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(height:20),
                              Text(
                                  '27th January 2022',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              Text(
                                'International Polar Bear Day',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(height:20),
                              Text(
                                  '22nd April 2022',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              Text(
                                'Earth Day',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(height:20),
                              Text(
                                  '15th June 2022',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              Text(
                                'Global Wind Day',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(height:20),
                              Text(
                                  '17th June 2022',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              Text(
                                'World Day to Combat Desertification and Drought',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(height:20),
                              Text(
                                  '11th July 2022',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              Text(
                                'World Population Day',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(height:20),
                              Text(
                                  '15th July 2022',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              Text(
                                'World Cleanup Day',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(height:20),
                              Text(
                                  '21th July 2022',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              Text(
                                'Zero Emissions Day',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 18,
                                ),
                              ),
                          ],
                        ),
              ],
      ),
          ],
        ),
              );
            }
          }