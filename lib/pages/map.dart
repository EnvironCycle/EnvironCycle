import 'package:flutter/material.dart';
import 'package:environcycle_prototype/ExtraUtility/CornerIcon.dart';

class Map extends StatefulWidget {
  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
    body: ListView(
      children: [
        Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height:10),
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
                          SizedBox(width:35),
                        Text(
                          'RECYCLING CENTRES',
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

              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/Belait');
                },
                child: Container(
                  margin: EdgeInsets.all(20),
                  height: 150, 
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/KB.jpg',
                            fit: BoxFit.cover
                            ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.black.withOpacity(0.7),
                                Colors.transparent,
                              ],
                            ),
                          ), 
                          ),
                      ),
                      Positioned(
                        bottom: 5,
                        child: Row(
                          children: [
                            SizedBox(width:15),
                             Text(
                               'Belait District',
                               style: TextStyle(
                                 fontFamily: "Josefin",
                                 fontSize: 25, 
                                 color: Colors.white,
                               ),
                               ),
                          ],
                        ),
                      ),
                     ],
                  ),
                ),
              ),

                    // Belait District

              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/Tutong');
                }, 
                child: Container(
                  margin: EdgeInsets.all(20),
                  height: 150, 
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/tutong.jpg',
                            fit: BoxFit.cover
                            ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.black.withOpacity(0.7),
                                Colors.transparent,
                              ],
                            ),
                          ), 
                          ),
                      ),
                      Positioned(
                        bottom: 5,
                        child: Row(
                          children: [
                            SizedBox(width:15),
                             Text(
                               'Tutong District',
                               style: TextStyle(
                                 fontFamily: "Josefin",
                                 fontSize: 25, 
                                 color: Colors.white,
                               ),
                               ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

          // Tutong District

              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/BSB');
                },
                child: Container(
                  margin: EdgeInsets.all(20),
                  height: 150, 
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/BSB.jpg',
                            fit: BoxFit.cover
                            ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.black.withOpacity(0.7),
                                Colors.transparent,
                              ],
                            ),
                          ), 
                          ),
                      ),
                      Positioned(
                        bottom: 5,
                        child: Row(
                          children: [
                            SizedBox(width:15),
                             Text(
                               'Brunei-Muara District',
                               style: TextStyle(
                                 fontFamily: "Josefin",
                                 fontSize: 25, 
                                 color: Colors.white,
                               ),
                               ),
                          ],
                        ),
                      ),
                     ],
                  ),
                ),
              ),

              // BSB District

              //here
    ],
      ),
      ],
    ),
            );
// Map area for the selection of districts

  }
}
