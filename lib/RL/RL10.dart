import 'package:environcycle_prototype/ExtraUtility/CornerIcon.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class RL10 extends StatelessWidget {
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
                          'Tzu Chi Recycle',
                           style: TextStyle(
                             fontFamily: "Josefin",
                             letterSpacing: 1,
                             color: Color.fromRGBO(48, 47, 48, 1.0),
                             fontWeight: FontWeight.w700, 
                             fontSize: 22,
                          ),
                          ),         
                ]
              ),Column(
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
          ' Tzu Chi Recycle',
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
          ' - Aluminium, paper and plastics',
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
        child: Card(
        child: ListTile(
          leading: Icon(Icons.home_work),
          title: Text(
              'Kuala Belait'

          ),
          subtitle: Text(
            'Tzu Chi Recycle, H6M4+8FH, Kuala Belait',
          ),
        ),
      ),
      ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              '  Contact: (office) 226072, (m) 8610882',

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
  const url = 'https://www.google.com/search?q=Tzu+Chi+Recycle+burnei&biw=1920&bih=880&tbm=lcl&sxsrf=AOaemvKsPdOUDrG1lOWJuMwdnyXUZdYDeQ%3A1639279597330&ei=7Wu1YfC2E-rl2roP6uS6kAM&oq=Tzu+Chi+Recycle+burnei&gs_l=psy-ab.3..35i304i39k1.10867.13149.0.13340.8.7.0.0.0.0.179.601.0j4.4.0....0...1c.1.64.psy-ab..4.4.601...35i39k1j0i512i263i457i20k1j0i273k1j0i512k1j0i512i263i20k1j33i22i29i30k1.0.Es8eDRAaoJ8#rlfi=hd:;si:6839654152622298668;mv:[[4.583487877319029,114.20641455469672],[4.58312792268097,114.20605344530328]]';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
