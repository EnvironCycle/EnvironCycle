import 'package:flutter/material.dart';

class Map extends StatefulWidget {
  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff81c684),
        title:
        Text(
            'Recycling Centres',
        style: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 25.0,
          fontFamily: 'SourceSansPro',
        )
        ),

        centerTitle: true,
      ),
    body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Belait',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 23.0,
                  )
                ),
              ),
            ),
            FlatButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/RL6');
              },
              icon: ImageIcon(
                  AssetImage('assets/recycling_logo.png')
              ),
              label: Text(
                'Seri HK Recycling Company',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            FlatButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/RL4');
              },
              icon: ImageIcon(
                  AssetImage('assets/recycling_logo.png')
              ),
              label: Text(
                'CIC Environmental Services Sdn. Bhd.',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ),
            //RL1
            SizedBox(
              height: 10,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    'Tutong',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23.0,
                    )
                ),
              ),
            ),
            FlatButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/RL8');
              },
              icon: ImageIcon(
                  AssetImage('assets/recycling_logo.png')
              ),
              label: Text(
                'EnEvo Sdn Bhd',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            FlatButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/RL7');
              },
              icon: ImageIcon(
                  AssetImage('assets/recycling_logo.png')
              ),
              label: Text(
                'Kawan Bumi Enterprise',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            FlatButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/RL5');
              },
              icon: ImageIcon(
                  AssetImage('assets/recycling_logo.png')
              ),
              label: Text(
                'Brucycle Company',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    'Bandar Seri Begawan',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23.0,
                    )
                ),
              ),
            ),
            FlatButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/RL2');
              },
              icon: ImageIcon(
                  AssetImage('assets/recycling_logo.png')
              ),
              label: Row(
                children:[
                  Text(
                      'Syarikat Perindustrian Dan Perkembangan...',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      softWrap: false,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.left),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            FlatButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/RL1');
              },
              icon: ImageIcon(
                  AssetImage('assets/recycling_logo.png')
              ),
              label: Text(
                'Daikyo Environmental Recycling Sdn. Bhd.',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //RL3
            FlatButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/RL3');
              },
              icon: ImageIcon(
                  AssetImage('assets/recycling_logo.png')
              ),
              label: Text(
                'Sallima Recycling Works',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            FlatButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/RL9');
              },
              icon: ImageIcon(
                  AssetImage('assets/recycling_logo.png')
              ),
              label: Text(
                'Aglobal Green Recycle',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ),
    ],
      ),
    ),
      );



  }
}
