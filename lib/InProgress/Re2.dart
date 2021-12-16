import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Re2 extends StatefulWidget {
  @override
  _Re2State createState() => _Re2State();
}

class _Re2State extends State<Re2> {

  bool isVisible = false;
  int counter = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '10% Gong Cha Voucher',
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontFamily: 'SourceSansPro',
            fontSize: (25),
          ),
        ),
      ),
      body: Column(
        children:[
          SizedBox(
            height: 200,
            width: 100,
            child: Image.asset(
                'assets/GClogo.jpg'
            ),
          ),
          Card(
            child: Text(
              '   Get a 10% off of any purchase that you make that is over 20 dollars in Gong Cha',
              style: TextStyle(
                  fontSize: (25),
                  color: Colors.black,
                  letterSpacing: 1,
                  fontWeight: FontWeight.normal
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Each voucher costs 100 EnviroCoin!',
            style: TextStyle(
              fontSize: 21,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 50,
            width: 300,
            child: RaisedButton(
              onPressed: () {
                setState(() {
                  isVisible = true;
                  counter -= 100;
                });
              },
              color: Colors.cyan,
              child: Text(
                'Click to redeem a voucher',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:[
                  Text(
                    'You currently have:',
                    style: TextStyle(
                      fontSize: 21,
                    ),
                  ),
                  Text(
                    ' $counter',
                    style: TextStyle(
                      fontSize: 21,
                    ),
                  ),
                  Text(
                    ' EnviroCoins',
                    style: TextStyle(
                      fontSize: 21,
                    ),
                  )
                ]
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Here are the current vouchers that you have, tap on it to use them!',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
          Visibility(
            visible: isVisible ,
            child: Container(
              margin: EdgeInsets.only(bottom:16),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/gc');
                },
                child: Card(
                  child: ListTile(
                    leading: Image.asset(
                        'assets/GClogo.jpg'
                    ),
                    title: Text(
                        '10% Gong Cha Voucher'
                    ),
                    subtitle: Text(
                        'Tap to use'
                    ),
                    trailing: GestureDetector(
                      onTap: () {
                        setState(() {
                          isVisible = false;
                          counter += 100;
                        });
                      } ,
                      child: Icon(
                          Icons.cancel,
                      ),
                    ),
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
