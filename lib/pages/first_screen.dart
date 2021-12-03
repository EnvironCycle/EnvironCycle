import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class EnvironCycle extends StatefulWidget {
  @override
  _EnvironCycleState createState() => _EnvironCycleState();
}

class _EnvironCycleState extends State<EnvironCycle> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/background1.jpg"), fit: BoxFit.cover),
        ),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(
              child: Column(
                children: [
                   Padding(
                     padding: EdgeInsets.all(50.0),
                       child: Image.asset('./assets/eclogonew.png')),
                  SizedBox(height: 10),
                  Wrap(
                    direction: Axis.vertical,
                    children: [
                      Align(
                      alignment: Alignment(0,1),
                      child: SizedBox(
                        width: 250,
                        height: 80,
                          child:
                            FlatButton(
                              child: Text(
                                'START',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.black,
                                  letterSpacing: 1.0,
                                  fontSize: (60),
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              color: Colors.cyan[100],
                              onPressed: () {
                                Navigator.pushNamed(context, '/home');
                              },
                          ),
                        ),
                      ),
      ],
                  ),
                  SizedBox(height: 40),
                  Text(
                    '"Beginning Your Journey To Recycle"',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                      fontFamily: 'Allura',
                    ),
                  ),
                  SizedBox(
                    height: 40
                  ),
                  SizedBox(
                    width:90,
                    height:37.5,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/au');
                      },
                      color: Colors.cyan[200],
                      child: Icon(
                        Icons.person_sharp,
                        color: Colors.black,
                        size: 40,
                      ),

                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'About Us',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),


            ),
        ),
    );












  }
}