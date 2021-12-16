import 'package:environcycle_prototype/ExtraUtility/CornerIcon.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class RL1 extends StatelessWidget {
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
                          SizedBox(width:35),
                        Text(
                          'Daikyo Environmental Recycling',
                           style: TextStyle(
                             fontFamily: "Josefin",
                             letterSpacing: 1,
                             color: Color.fromRGBO(48, 47, 48, 1.0),
                             fontWeight: FontWeight.w700, 
                             fontSize: 14
                          ),
                          ),
                ]
              ),
              SizedBox(height:10),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
            '  Company:',
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
          Text(
            ' Daikyo Environmental Recycling Sdn. Bhd.',
            style: TextStyle(
              color: Colors.black,
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
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
          Text(
            '- Scrap Metals, Used Paper, Used Computers and Used Plastics',
              style: TextStyle(
              color: Colors.black,
              fontSize: 17.0,
              fontWeight: FontWeight.normal
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
                'Muara'
              ),
              subtitle: Text(
                'Spg. 287, Jalan Pantai Serasa, Negara Brunei Darussalam'
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
                '  Contact: (office) 2441797, 2441823, 2422796, 2773380',
          ),
          ),
          SizedBox(
            height: 10,
          ),
      GestureDetector(
        onTap: _launchURL2,
        child:Card(
            child: ListTile(
              leading: Icon(Icons.home_work),
              title: Text(
                  'Jalan Batu Bersurat'
              ),
              subtitle: Text(
                  'No. 111, Bersurat Building, Jalan Batu Bersurat, Negara Brunei Darussalam',
              ),
            ),
          ),
      ),
          SizedBox(
            height: 5,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
                '  Contact: (m) 8714130',
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Icon(Icons.home_work),
            title: Text(
                'Bandar Seri Begawan',
            ),
            subtitle: Text(
                'P.O Box 2393, Bandar Seri Begawan BS 8674, Negara Brunei Darussalam',
            ),
          ),
          SizedBox(
            height: 5,
          ),
        Align(
         alignment: Alignment.topLeft,
          child:Text(
              '  Contact: (f) 2441797',
          ),
        ),
      ],
      ),

    );
  }
}

_launchURL() async {
  const url = 'https://www.google.com/maps/place/Daikyo+Environmental+Recycling+Sdn+Bhd/@5.0042319,115.0598925,17z/data=!3m1!4b1!4m5!3m4!1s0x3222f1de74e929a3:0x9f6b22dc30280689!8m2!3d5.0042319!4d115.0620812';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL2() async {
  const url = 'https://goo.gl/maps/LYnGxbgJqmjZcSMi8';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

