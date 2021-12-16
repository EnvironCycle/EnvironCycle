import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class about_us extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff81c684),
          title: Text(
            'About Us',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 25.0,
              fontFamily: 'SourceSansPro',
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/au1.png',
              ),
              Image.asset(
                'assets/au2.png',
              ),

              // ^pictures on what we do and who we are
              // Instagram url launcher (bottom)

              Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: _launchURL,
              child: Card(
                child: ListTile(
                  leading: Image.asset(
                      'assets/instagram.png'
                  ),
                  title: Text(
                      'Instagram'
                  ),
                  subtitle: Text(
                      'Check out our instagram!'
                  ),
                ),
              ),
            ),
          ),

            ],
          ),
        )
    );

  }
}


_launchURL() async {
  const url = 'https://www.instagram.com/environcycle_lab/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
