import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:environcycle_prototype/ExtraUtility/CornerIcon.dart';

class RLSelect extends StatefulWidget {
  @override
  _RLSelectState createState() => _RLSelectState();
}

class _RLSelectState extends State<RLSelect> {
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
                          'Choose your method:',
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
                  Navigator.pushNamed(context, '/floc');
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
                      './assets/R4.svg',
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
                                  'Filtered Selection',
                                style: cardTextStyle
                                ),
                                SizedBox(height:10),
                                Text(
                                  "Recycling centres based on",
                                style: cardTextStyle2
                                ),
                                Text(
                                  "materials? Choose me! ",
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
                                  
                  ]
                ),
              ),
              SizedBox(height:10),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/map');
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
                      './assets/R5.svg',
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
                                  'Area Selection',
                                style: cardTextStyle
                                ),
                                SizedBox(height:10),
                                Text(
                                  'Recycling centres based ',
                                style: cardTextStyle2
                                ),
                                Text(
                                  'on your district? Choose me!',
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
                                  
                  ]
                ),
              ),
            ],
          ),
    );
  }
}

//map selection area