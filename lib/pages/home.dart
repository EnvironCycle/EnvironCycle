import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/background1.jpg"), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.greenAccent[100],
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: SafeArea(
                    child: Text(
                        'Welcome to EnvironCycle!',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5,
                          color: Colors.black,
                        )
                    ),
                  ),
                ),
                SizedBox(height: 40),
                SizedBox(
                  width:180,
                  height:50,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/info');
                    },
                    color: Colors.green,
                    child: Icon(
                      Icons.info,
                      size: 45,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Information',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 40),
                SizedBox(
                  width:180,
                  height:50,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/map');
                    },
                    color: Colors.green,
                    child: Icon(
                      Icons.map_outlined,
                      size: 45,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Location',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 40),
                SizedBox(
                  width:180,
                  height:50,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/article');
                    },
                    color: Colors.green,
                    child: Icon(
                      Icons.article_outlined,
                      size: 45,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'News',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 40),
                SizedBox(
                  width:180,
                  height:50,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/events');
                    },
                    color: Colors.green,
                    child: Icon(
                      Icons.calendar_today_sharp,
                      size: 45,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Events',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 40),
                SizedBox(
                  width:180,
                  height:50,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/vouchers');
                    },
                    color: Colors.green,
                    child: Icon(
                      Icons.attach_money,
                      size: 45,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Vouchers',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}