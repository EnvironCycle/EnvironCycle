import 'package:environcycle_prototype/ExtraUtility/CornerIcon.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class RL6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      body: Column(
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
                          SizedBox(width:20),
                        Text(
                          'Seri HK Recycling Company',
                           style: TextStyle(
                             fontFamily: "Josefin",
                             letterSpacing: 1,
                             color: Color.fromRGBO(48, 47, 48, 1.0),
                             fontWeight: FontWeight.w700, 
                             fontSize: 22,
                          ),
                          ),         
                ]
              ), 
              Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                ' Company:',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                ' Seri HK Recycling Company',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Divider(
              height: 10,
              thickness: 1,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                '  Items Received:',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                ' - Scrap Metals',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17.0,
                    fontWeight: FontWeight.normal
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                '  Locations:',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
      GestureDetector(
        onTap: _launchURL,
        child:Card(
              child: ListTile(
                leading: Icon(Icons.home_work),
                title: Text(
                    'Seria'
                ),
                subtitle: Text(
                  'Anduki, Landfill Site, Seria, Kuala Belait, Negara Brunei Darussalam',
                ),
              ),
            ),
      ),
            SizedBox(
              height: 5,
            ),
            Align(
              alignment: Alignment.topLeft,
              child:Text(
                '  Contact: (m) 8739828',
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
        ],
      ),
    );
  }
}

_launchURL() async {
  const url = 'https://goo.gl/maps/9zjkbvE2K5muC9FA7';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
