import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:environcycle_prototype/ExtraUtility/aboutusbutton.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    // to get size
    var size = MediaQuery.of(context).size;

    // style
    var cardTextStyle = TextStyle(
        fontFamily: "More",
        fontSize: 14,
        color: Color.fromRGBO(63, 63, 63, 1));

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .3,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.topCenter,
                  image: AssetImage('assets/top_header.png'),
                  fit: BoxFit.cover,
                  ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  SizedBox(height:5),
                  Container(
                    height: 64,
                    margin: EdgeInsets.only(bottom: 25),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(width:5),
                        CircleAvatar(
                          radius: 32,
                          backgroundImage: AssetImage(
                              './assets/environcyclenewest.jpg'),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'EnvironCycle',
                              style: TextStyle(
                                  fontFamily: "Mome",
                                  color: Colors.white,
                                  fontSize: 24),
                            ),
                            Text(
                              'Menu Section',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontFamily: "More"),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: GridView.count(
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      primary: false,
                      crossAxisCount: 2,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                      Navigator.pushNamed(context, '/info');
                    },
                          child: Card(
                            shape:RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)
                            ),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.asset(
                                  './assets/InfoIcon2.svg',
                                  height: 110,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Environmental Tips',
                                  style: cardTextStyle,
                                ),
                              ],
                            ),
                          ),
                        ),

                        //info tile

                        GestureDetector(
                          onTap: () {
                      Navigator.pushNamed(context, '/article');
                    },
                          child: Card(
                            shape:RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)
                            ),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.asset(
                                  './assets/ArticlesIcon.svg',
                                  height: 110,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Recycling News',
                                  style: cardTextStyle,
                                ),
                              ],
                            ),
                          ),
                        ),

                        //news tile

                        GestureDetector(
                          onTap: () {
                      Navigator.pushNamed(context, '/rlselect');
                    },
                          child: Card(
                            shape:RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)
                            ),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.asset(
                                  './assets/LocationIcon.svg',
                                  height: 110,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Recycling Locations',
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),

                        //recycling locations tile

                        GestureDetector(
                          onTap: () {
                      Navigator.pushNamed(context, '/events');
                    },
                          child: Card(
                            shape:RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)
                            ),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.asset(
                                  './assets/EventsIcon.svg',
                                  height: 110,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Event Calender',
                                  style: cardTextStyle,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // events tile 


             Positioned(
              bottom: 20,
              width: size.width,
              child: Center(
                child: AUButton(
                  text: "About Us",
                  icon: Icons.people,
                  width: size.width * 0.35,
                ),
              ),
            )
        ],
      ),
    );

    //about us tile
  }
}

//menu area
