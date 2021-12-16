import 'package:environcycle_prototype/ExtraUtility/CornerIcon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Floc extends StatefulWidget {
  @override
  _FlocState createState() => _FlocState();
}

class _FlocState extends State<Floc> {

  bool isVisible1 = false;
  bool isVisible2 = false;
  bool isVisible3 = false;
  bool isVisible4 = false;
  bool isVisible5 = false;
  bool isVisible6 = false;
  bool isVisible7 = false;

   var cardTextStyle = TextStyle(
        fontFamily: "More",
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(63, 63, 63, 1));

  var cardTextStyle2 = TextStyle(
        fontFamily: "More",
        fontSize: 14,
        color: Color.fromRGBO(63, 63, 63, 1));

  @override
  Widget build(BuildContext context) {
      return Scaffold(
         backgroundColor: Colors.green[50],
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
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
                  ],
            ),
           SizedBox(height: 10),
            GestureDetector(
                  onTap: () => setState(() => isVisible1 = !isVisible1),
                  child: Stack(
                    children: <Widget> [
                      Container(
                        height: 80,
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
                    SizedBox(height:2),
                    Row(
                      children: <Widget> [ 
                        SizedBox(width:20),
                        SvgPicture.asset(
                        './assets/plastic.svg',
                        height: 70, 
                        ),
                      ],
                    ),
                    Positioned(
                      right: 20,
                      child: Column(
                        children: <Widget> [
                          SizedBox(height:3),
                          Row(
                            children: [
                              Container(
                              height: 136,
                              child: Column(
                                children: <Widget> [
                                  Text(
                                    'Plastic',
                                  style: cardTextStyle
                                  ),
                                  SizedBox(height:2),
                                  Text(
                                    "Click to show or hide",
                                  style: cardTextStyle2
                                  ),
                                  Text(
                                    "places which accepts plastic",
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
          ],
        ),
            ),
            SizedBox(height:5),
            Visibility(
              visible: isVisible1,
              child: Container(
                margin: EdgeInsets.only(bottom:5),
                child: Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          child: GestureDetector(
                      onTap: () {
                          Navigator.pushNamed(context, '/RL10');
                      },
                        child: Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15.0)
                            ),
                            child: Column(
                              children: [
                                SizedBox(height:3),
                                Row(
                                children: [
                                  SizedBox(width:20),
                                  ImageIcon(
                                    AssetImage('assets/recycling_logo.png'),
                                    color: Colors.green,
                        ),
                        SizedBox(width: 10),
                        Text(
                              'Tzu Chi Recycle',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                        ),
                                ],
                                    ),
                                    Row(
                                      children: [
                        SizedBox(width:20),
                        Text('District: Belait'),
                                      ],
                                    ),
                              ],
                            ),
                        ),
                      ),
                        ),
                      ]
                    ),
              ),
            ),
            Visibility(
              visible: isVisible1,
              child: Container(
                margin: EdgeInsets.only(bottom:5),
                child: Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          child: GestureDetector(
                      onTap: () {
                          Navigator.pushNamed(context, '/RL1');
                      },
                      child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0)
                          ),
                          child: Column(
                            children: [
                              SizedBox(height:3),
                              Row(
                              children: [
                                SizedBox(width:20),
                                ImageIcon(
                                  AssetImage('assets/recycling_logo.png'),
                                  color: Colors.green,
                      ),
                      SizedBox(width: 10),
                      Text(
                            'Daikyo Environmental Recycling',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                      ),
                              ],
                  ),
                  Row(
                    children: [
                      SizedBox(width:20),
                      Text('District: Brunei-Muara'),
                    ],
                  ),
                            ],
                          ),
                      ),
                      ),
                        ),
                      ]
                    ),
              ),
            ),
            GestureDetector(
                  onTap: () => setState(() => isVisible2 = !isVisible2),
                  child: Stack(
                    children: <Widget> [
                      Container(
                        height: 80,
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
                    SizedBox(height:2),
                    Row(
                      children: <Widget> [ 
                        SizedBox(width:20),
                        SvgPicture.asset(
                        './assets/metal.svg',
                        height: 70, 
                        ),
                      ],
                    ),
                    Positioned(
                      right: 20,
                      child: Column(
                        children: <Widget> [
                          SizedBox(height:3),
                          Row(
                            children: [
                              Container(
                              height: 136,
                              child: Column(
                                children: <Widget> [
                                  Text(
                                    'Scrap Metals',
                                  style: cardTextStyle
                                  ),
                                  SizedBox(height:2),
                                  Text(
                                    "Click to show or hide",
                                  style: cardTextStyle2
                                  ),
                                  Text(
                                    "places which accepts scrap metals",
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
          ],
        ),
            ),
            SizedBox(height:5),
            Visibility(
              visible: isVisible2,
              child: Container(
                margin: EdgeInsets.only(bottom:5),
                child: Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          child: GestureDetector(
                      onTap: () {
                          Navigator.pushNamed(context, '/RL1');
                      },
                      child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0)
                          ),
                          child: Column(
                            children: [
                              SizedBox(height:3),
                              Row(
                              children: [
                                SizedBox(width:20),
                                ImageIcon(
                                  AssetImage('assets/recycling_logo.png'),
                                  color: Colors.green,
                      ),
                      SizedBox(width: 10),
                      Text(
                            'Daikyo Environmental Recycling',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                      ),
                              ],
                  ),
                  Row(
                    children: [
                      SizedBox(width:20),
                      Text('District: Brunei-Muara'),
                    ],
                  ),
                            ],
                          ),
                      ),
                      ),
                        ),
                      ]
                    ),
              ),
            ),
            Visibility(
              visible: isVisible2,
              child: Container(
                margin: EdgeInsets.only(bottom:5),
                child: Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          child: GestureDetector(
                      onTap: () {
                          Navigator.pushNamed(context, '/RL2');
                      },
                      child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0)
                          ),
                          child: Column(
                            children: [
                              SizedBox(height:3),
                              Row(
                              children: [
                                SizedBox(width:20),
                                ImageIcon(
                                  AssetImage('assets/recycling_logo.png'),
                                  color: Colors.green,
                      ),
                      SizedBox(width: 10),
                      Text(
                            'Syarikat Perindustrian Dan Perkembangan...',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                      ),
                              ],
                  ),
                  Row(
                    children: [
                      SizedBox(width:20),
                      Text('District: Tutong'),
                    ],
                  ),
                            ],
                          ),
                      ),
                      ),
                        ),
                      ]
                    ),
              ),
            ),
            Visibility(
              visible: isVisible2,
              child: Container(
                margin: EdgeInsets.only(bottom:5),
                child: Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          child: GestureDetector(
                      onTap: () {
                          Navigator.pushNamed(context, '/RL3');
                      },
                      child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0)
                          ),
                          child: Column(
                            children: [
                              SizedBox(height:3),
                              Row(
                              children: [
                                SizedBox(width:20),
                                ImageIcon(
                                  AssetImage('assets/recycling_logo.png'),
                                  color: Colors.green,
                      ),
                      SizedBox(width: 10),
                      Text(
                            'Sallima Recycling Works',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                      ),
                              ],
                  ),
                  Row(
                    children: [
                      SizedBox(width:20),
                      Text('District: Brunei-Muara'),
                    ],
                  ),
                            ],
                          ),
                      ),
                      ),
                        ),
                      ]
                    ),
              ),
            ),
            Visibility(
              visible: isVisible2,
              child: Container(
                margin: EdgeInsets.only(bottom:5),
                child: Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          child: GestureDetector(
                      onTap: () {
                          Navigator.pushNamed(context, '/RL6');
                      },
                      child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0)
                          ),
                          child: Column(
                            children: [
                              SizedBox(height:3),
                              Row(
                              children: [
                                SizedBox(width:20),
                                ImageIcon(
                                  AssetImage('assets/recycling_logo.png'),
                                  color: Colors.green,
                      ),
                      SizedBox(width: 10),
                      Text(
                            'Seri HK Recycling Company',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                      ),
                              ],
                  ),
                  Row(
                    children: [
                      SizedBox(width:20),
                      Text('District: Belait'),
                    ],
                  ),
                            ],
                          ),
                      ),
                      ),
                        ),
                      ]
                    ),
              ),
            ),
            GestureDetector(
                  onTap: () => setState(() => isVisible3 = !isVisible3),
                  child: Stack(
                    children: <Widget> [
                      Container(
                        height: 80,
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
                    SizedBox(height:2),
                    Row(
                      children: <Widget> [ 
                        SizedBox(width:20),
                        SvgPicture.asset(
                        './assets/paper.svg',
                        height: 70, 
                        ),
                      ],
                    ),
                    Positioned(
                      right: 20,
                      child: Column(
                        children: <Widget> [
                          SizedBox(height:3),
                          Row(
                            children: [
                              Container(
                              height: 136,
                              child: Column(
                                children: <Widget> [
                                  Text(
                                    'Paper',
                                  style: cardTextStyle
                                  ),
                                  SizedBox(height:2),
                                  Text(
                                    "Click to show or hide",
                                  style: cardTextStyle2
                                  ),
                                  Text(
                                    "places which accepts used paper",
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
          ],
        ),
            ),
            SizedBox(height:5),
            Visibility(
              visible: isVisible3,
              child: Container(
                margin: EdgeInsets.only(bottom:5),
                child: Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          child: GestureDetector(
                      onTap: () {
                          Navigator.pushNamed(context, '/RL1');
                      },
                      child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0)
                          ),
                          child: Column(
                            children: [
                              SizedBox(height:3),
                              Row(
                              children: [
                                SizedBox(width:20),
                                ImageIcon(
                                  AssetImage('assets/recycling_logo.png'),
                                  color: Colors.green,
                      ),
                      SizedBox(width: 10),
                      Text(
                            'Daikyo Environmental Recycling',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                      ),
                              ],
                  ),
                  Row(
                    children: [
                      SizedBox(width:20),
                      Text('District: Brunei-Muara'),
                    ],
                  ),
                            ],
                          ),
                      ),
                      ),
                        ),
                      ]
                    ),
              ),
            ),
            Visibility(
              visible: isVisible3,
              child: Container(
                margin: EdgeInsets.only(bottom:5),
                child: Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          child: GestureDetector(
                      onTap: () {
                          Navigator.pushNamed(context, '/RL8');
                      },
                      child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0)
                          ),
                          child: Column(
                            children: [
                              SizedBox(height:3),
                              Row(
                              children: [
                                SizedBox(width:20),
                                ImageIcon(
                                  AssetImage('assets/recycling_logo.png'),
                                  color: Colors.green,
                      ),
                      SizedBox(width: 10),
                      Text(
                            'EnEvo Sdn. Bhd. ',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                      ),
                              ],
                  ),
                  Row(
                    children: [
                      SizedBox(width:20),
                      Text('District: Tutong'),
                    ],
                  ),
                            ],
                          ),
                      ),
                      ),
                        ),
                      ]
                    ),
              ),
            ),
            Visibility(
              visible: isVisible3,
              child: Container(
                margin: EdgeInsets.only(bottom:5),
                child: Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          child: GestureDetector(
                      onTap: () {
                          Navigator.pushNamed(context, '/RL9');
                      },
                      child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0)
                          ),
                          child: Column(
                            children: [
                              SizedBox(height:3),
                              Row(
                              children: [
                                SizedBox(width:20),
                                ImageIcon(
                                  AssetImage('assets/recycling_logo.png'),
                                  color: Colors.green,
                      ),
                      SizedBox(width: 10),
                      Text(
                            'Aglobal Green Recycle',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                      ),
                              ],
                  ),
                  Row(
                    children: [
                      SizedBox(width:20),
                      Text('District: Brunei-Muara'),
                    ],
                  ),
                            ],
                          ),
                      ),
                      ),
                        ),
                      ]
                    ),
              ),
            ),
            Visibility(
              visible: isVisible3,
              child: Container(
                margin: EdgeInsets.only(bottom:5),
                child: Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          child: GestureDetector(
                      onTap: () {
                          Navigator.pushNamed(context, '/RL10');
                      },
                      child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0)
                          ),
                          child: Column(
                            children: [
                              SizedBox(height:3),
                              Row(
                              children: [
                                SizedBox(width:20),
                                ImageIcon(
                                  AssetImage('assets/recycling_logo.png'),
                                  color: Colors.green,
                      ),
                      SizedBox(width: 10),
                      Text(
                            'Tzu Chi Belait',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                      ),
                              ],
                  ),
                  Row(
                    children: [
                      SizedBox(width:20),
                      Text('District: Belait'),
                    ],
                  ),
                            ],
                          ),
                      ),
                      ),
                        ),
                      ]
                    ),
              ),
            ),
            GestureDetector(
                  onTap: () => setState(() => isVisible4 = !isVisible4),
                  child: Stack(
                    children: <Widget> [
                      Container(
                        height: 80,
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
                    SizedBox(height:2),
                    Row(
                      children: <Widget> [ 
                        SizedBox(width:20),
                        SvgPicture.asset(
                        './assets/oil.svg',
                        height: 70, 
                        ),
                      ],
                    ),
                    Positioned(
                      right: 20,
                      child: Column(
                        children: <Widget> [
                          SizedBox(height:3),
                          Row(
                            children: [
                              Container(
                              height: 136,
                              child: Column(
                                children: <Widget> [
                                  Text(
                                    'Used Oil',
                                  style: cardTextStyle
                                  ),
                                  SizedBox(height:2),
                                  Text(
                                    "Click to show or hide",
                                  style: cardTextStyle2
                                  ),
                                  Text(
                                    "places which accepts used oil",
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
          ],
        ),
            ),
            SizedBox(height:5),
             Visibility(
              visible: isVisible4,
              child: Container(
                margin: EdgeInsets.only(bottom:5),
                child: Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          child: GestureDetector(
                      onTap: () {
                          Navigator.pushNamed(context, '/RL4');
                      },
                      child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0)
                          ),
                          child: Column(
                            children: [
                              SizedBox(height:3),
                              Row(
                              children: [
                                SizedBox(width:20),
                                ImageIcon(
                                  AssetImage('assets/recycling_logo.png'),
                                  color: Colors.green,
                      ),
                      SizedBox(width: 10),
                      Text(
                            'CIC Environmental Services Sdn. Bhd.',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                      ),
                              ],
                  ),
                  Row(
                    children: [
                      SizedBox(width:20),
                      Text('District: Belait'),
                    ],
                  ),
                            ],
                          ),
                      ),
                      ),
                        ),
                      ]
                    ),
              ),
            ),
            GestureDetector(
                  onTap: () => setState(() => isVisible5 = !isVisible5),
                  child: Stack(
                    children: <Widget> [
                      Container(
                        height: 80,
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
                    SizedBox(height:2),
                    Row(
                      children: <Widget> [ 
                        SizedBox(width:20),
                        SvgPicture.asset(
                        './assets/can.svg',
                        height: 70, 
                        ),
                      ],
                    ),
                    Positioned(
                      right: 20,
                      child: Column(
                        children: <Widget> [
                          SizedBox(height:3),
                          Row(
                            children: [
                              Container(
                              height: 136,
                              child: Column(
                                children: <Widget> [
                                  Text(
                                    'Aluminum Cans',
                                  style: cardTextStyle
                                  ),
                                  SizedBox(height:2),
                                  Text(
                                    "Click to show or hide places",
                                  style: cardTextStyle2
                                  ),
                                  Text(
                                    "which accepts used aluminum cans",
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
          ],
        ),
            ),
            SizedBox(height:5),
             Visibility(
              visible: isVisible5,
              child: Container(
                margin: EdgeInsets.only(bottom:5),
                child: Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          child: GestureDetector(
                      onTap: () {
                          Navigator.pushNamed(context, '/RL10');
                      },
                      child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0)
                          ),
                          child: Column(
                            children: [
                              SizedBox(height:3),
                              Row(
                              children: [
                                SizedBox(width:20),
                                ImageIcon(
                                  AssetImage('assets/recycling_logo.png'),
                                  color: Colors.green,
                      ),
                      SizedBox(width: 10),
                      Text(
                            'Tzu Chi Recycle',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                      ),
                              ],
                  ),
                  Row(
                    children: [
                      SizedBox(width:20),
                      Text('District: Belait'),
                    ],
                  ),
                            ],
                          ),
                      ),
                      ),
                        ),
                      ]
                    ),
              ),
            ),
            GestureDetector(
                  onTap: () => setState(() => isVisible6 = !isVisible6),
                  child: Stack(
                    children: <Widget> [
                      Container(
                        height: 80,
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
                    SizedBox(height:2),
                    Row(
                      children: <Widget> [ 
                        SizedBox(width:20),
                        SvgPicture.asset(
                        './assets/battery.svg',
                        height: 70, 
                        ),
                      ],
                    ),
                    Positioned(
                      right: 20,
                      child: Column(
                        children: <Widget> [
                          SizedBox(height:3),
                          Row(
                            children: [
                              Container(
                              height: 136,
                              child: Column(
                                children: <Widget> [
                                  Text(
                                    'Motorcar Battery',
                                  style: cardTextStyle
                                  ),
                                  SizedBox(height:2),
                                  Text(
                                    "Click to show or hide places",
                                  style: cardTextStyle2
                                  ),
                                  Text(
                                    "which accepts used M.Car batteries",
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
          ],
        ),
            ),
            SizedBox(height:5),
             Visibility(
              visible: isVisible6,
              child: Container(
                margin: EdgeInsets.only(bottom:5),
                child: Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          child: GestureDetector(
                      onTap: () {
                          Navigator.pushNamed(context, '/RL2');
                      },
                      child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0)
                          ),
                          child: Column(
                            children: [
                              SizedBox(height:3),
                              Row(
                              children: [
                                SizedBox(width:20),
                                ImageIcon(
                                  AssetImage('assets/recycling_logo.png'),
                                  color: Colors.green,
                      ),
                      SizedBox(width: 10),
                      Text(
                            'Syarikat Perindustrian Dan Perkembangan...',
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                      ),
                              ],
                  ),
                  Row(
                    children: [
                      SizedBox(width:20),
                      Text('District: Tutong'),
                    ],
                  ),
                            ],
                          ),
                      ),
                      ),
                        ),
                      ]
                    ),
              ),
            ),
            Visibility(
              visible: isVisible6,
              child: Container(
                margin: EdgeInsets.only(bottom:5),
                child: Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          child: GestureDetector(
                      onTap: () {
                          Navigator.pushNamed(context, '/RL3');
                      },
                      child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0)
                          ),
                          child: Column(
                            children: [
                              SizedBox(height:3),
                              Row(
                              children: [
                                SizedBox(width:20),
                                ImageIcon(
                                  AssetImage('assets/recycling_logo.png'),
                                  color: Colors.green,
                      ),
                      SizedBox(width: 10),
                      Text(
                            'Sallima Recycling Works',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                      ),
                              ],
                  ),
                  Row(
                    children: [
                      SizedBox(width:20),
                      Text('District: Brunei-Muara'),
                    ],
                  ),
                            ],
                          ),
                      ),
                      ),
                        ),
                      ]
                    ),
              ),
            ),
            GestureDetector(
                  onTap: () => setState(() => isVisible7 = !isVisible7),
                  child: Stack(
                    children: <Widget> [
                      Container(
                        height: 80,
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
                    SizedBox(height:2),
                    Row(
                      children: <Widget> [ 
                        SizedBox(width:20),
                        SvgPicture.asset(
                        './assets/computer.svg',
                        height: 70, 
                        ),
                      ],
                    ),
                    Positioned(
                      right: 20,
                      child: Column(
                        children: <Widget> [
                          SizedBox(height:3),
                          Row(
                            children: [
                              Container(
                              height: 136,
                              child: Column(
                                children: <Widget> [
                                  Text(
                                    'Used Computer',
                                  style: cardTextStyle
                                  ),
                                  SizedBox(height:2),
                                  Text(
                                    "Click to show or hide places",
                                  style: cardTextStyle2
                                  ),
                                  Text(
                                    "which accepts used computers",
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
          ],
        ),
            ),
            SizedBox(height:5),
             Visibility(
              visible: isVisible7,
              child: Container(
                margin: EdgeInsets.only(bottom:5),
                child: Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          child: GestureDetector(
                      onTap: () {
                          Navigator.pushNamed(context, '/RL1');
                      },
                      child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0)
                          ),
                          child: Column(
                            children: [
                              SizedBox(height:3),
                              Row(
                              children: [
                                SizedBox(width:20),
                                ImageIcon(
                                  AssetImage('assets/recycling_logo.png'),
                                  color: Colors.green,
                      ),
                      SizedBox(width: 10),
                      Text(
                            'Daikyo Environmental Recycling',
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                      ),
                              ],
                  ),
                  Row(
                    children: [
                      SizedBox(width:20),
                      Text('District: Brunei-Muara'),
                    ],
                  ),
                            ],
                          ),
                      ),
                      ),
                        ),
                      ]
                    ),
              ),
            ),
                //here
          ],
        ),
      ),
      );
  }
}