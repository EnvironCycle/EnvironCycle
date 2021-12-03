import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class about_us extends StatelessWidget { @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xff81c684),
        title: Text(
          'About Us!',
          style: TextStyle(
            fontFamily: 'SourceSansPro',
            fontWeight: FontWeight.normal,
            fontSize: 25.0,
          ),
        ),
          centerTitle: true,
      ),
      body:           Column(
        children: [
          Card(
            child: Text(
              'Creators of EnvironCycle',
            style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold
            ),
          ),
          ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text(
        'We are students that hopes to create an app that helps Bruneians with recycling',
        style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              letterSpacing: 0.5,
        ),
      ),
           ),
              Divider(
                thickness: 1,
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(
                    '- It all started with an app idea that we thought was impossible, but after doing research and other things, we realised that we could actually do this, as students who are still studying, the completion of this app was a milestone for all of us. We make the team of 5 people called The AI Fiveturistics (taken from the actual word: AI Futuristics)',
                  style: TextStyle(
                    letterSpacing: 0.5,
                    fontSize: 18,
                  )
                ),
              ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Text('- If you would like to find out more about us, please follow us or contact us through our Instagram page @environcycle_lab and support us! If there are any enquiries or questions, please e-mail us: environcyclebn@gmail.com',
                style: TextStyle(
                  letterSpacing: 0.5,
                  fontSize: 18,
                )
            ),
          ),
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

