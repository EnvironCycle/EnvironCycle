import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:environcycle_prototype/ExtraUtility/CornerIcon.dart';

class Info extends StatefulWidget {
  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override

  var cardTextStyle = TextStyle(
        fontFamily: "More",
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(63, 63, 63, 1));

  var cardTextStyle2 = TextStyle(
        fontFamily: "More",
        fontSize: 14,
        color: Color.fromRGBO(63, 63, 63, 1));

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
          body: Column(
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
                          SizedBox(width:60),
                        Text(
                          'RECYCLING TIPS',
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
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/infoshort');
                  },
                child: Stack(
                  children: <Widget> [
                    Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 8),
                            blurRadius: 24,
                            color: Colors.grey[100]
                          ),
                        ]
                      ),
                      
                  ),
                  Row(
                    children: <Widget> [ 
                      SizedBox(width:20),
                      SvgPicture.asset(
                      './assets/R1.svg',
                      height: 90, 
                      ),
                    ],
                  ),
                  Positioned(
                    right: 20,
                    child: Column(
                      children: <Widget> [
                        SizedBox(height:15),
                        Row(
                          children: [
                            Container(
                            height: 136,
                            child: Column(
                              children: <Widget> [
                                Text(
                                  'Bite Sized Info',
                                style: cardTextStyle
                                ),
                                SizedBox(height:10),
                                Text(
                                  'Got very little time to read up?',
                                style: cardTextStyle2
                                ),
                                Text(
                                  'This will do!',
                                style: cardTextStyle2),
                              

                              ]
                            ),
                      ),
                          ],
                        ),
                  ]
                    ),
                  ),

                  //information section (short)
                                  
                  ]
                ),
              ),
              SizedBox(height:10),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/infolong');
                  },
                child: Stack(
                  children: <Widget> [
                    Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 8),
                          blurRadius: 24,
                          color: Colors.blueGrey[50]
                        ),
                      ]
                    ),
                  ),
                  Row(
                    children: <Widget> [ 
                      SizedBox(width:20),
                      SvgPicture.asset(
                      './assets/R2.svg',
                      height: 90, 
                      ),
                    ],
                  ),
                  Positioned(
                    right: 20,
                    child: Column(
                      children: <Widget> [
                        SizedBox(height:15),
                        Row(
                          children: [
                            Container(
                            height: 136,
                            child: Column(
                              children: <Widget> [
                                Text(
                                  'Detailed Info',
                                style: cardTextStyle
                                ),
                                SizedBox(height:10),
                                Text(
                                  'Want in-depth info on recycling?',
                                style: cardTextStyle2
                                ),
                                Text(
                                  'This will do!',
                                style: cardTextStyle2
                                ),
                              ]
                            ),
                      ),
                          ],
                        ),
                  ]
                    ),
                  ),

                  //information section (long)
                                  
                  ]
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/facts');
                  },
                child: Stack(
                  children: <Widget> [
                    Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 8),
                            blurRadius: 24,
                            color: Colors.grey[100]
                          ),
                        ]
                      ),
                      
                  ),
                  Row(
                    children: <Widget> [ 
                      SizedBox(width:20),
                      SvgPicture.asset(
                      './assets/R3.svg',
                      height: 90, 
                      ),
                    ],
                  ),
                  Positioned(
                    right: 20,
                    child: Column(
                      children: <Widget> [
                        SizedBox(height:15),
                        Row(
                          children: [
                            Container(
                            height: 136,
                            child: Column(
                              children: <Widget> [
                                Text(
                                  'Interesting Facts!',
                                style: cardTextStyle
                                ),
                                SizedBox(height:10),
                                Text(
                                  'Curious to know more',
                                style: cardTextStyle2
                                ),
                                Text(
                                  'about recycling? This will do!',
                                style: cardTextStyle2),

                              //facts
                              
                              ]
                            ),
                      ),
                          ],
                        ),
                  ]
                    ),
                  ),
                                  
                  ]
                ),
              ),
            ],
          ),
    );
  }
}
