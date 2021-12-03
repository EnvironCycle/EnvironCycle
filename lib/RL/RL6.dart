import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class RL6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff81c684),
          title: Text(
              'Seri HK Recycling Company',
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
