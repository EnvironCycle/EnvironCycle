import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class RL8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff81c684),
          title: Text(
              'EnEvo Sdn Bhd',
            style: TextStyle(
            fontFamily: 'SourceSansPro',
              fontSize: 25.0,
          ),
        ),
          centerTitle: true,
        ),
      body: Column(
        children: [
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
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'EnEvo Sdn Bhd',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24.0,
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
              ' - Only white printing paper',
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
        child:
        Card(
            child: ListTile(
              leading: Icon(Icons.home_work),
              title: Text(
                  'DARe Industrial Complex'

              ),
              subtitle: Text(
                'Unit A1, Block 1, 1st Floor, DARe Industrial Complex, Serambangun Industrial Site, Tutong',
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
              '  Contact: (c) 8628930',
            ),
          ),
        ],
      ),

    );
  }
}

_launchURL() async {
  const url = 'https://goo.gl/maps/WurB4rn2ZmVxCbz37';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
