import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Re1 extends StatefulWidget {
  @override
  _Re1State createState() => _Re1State();
}

class _Re1State extends State<Re1> {

  bool isVisible = false;
  int counter = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '20% Coffee Bean Voucher',
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
                  'assets/cbtllogo.jpg'
              ),
          ),
          Card(
            child: Text(
                '   Get a 20% off of any purchase that you make that is over 30 dollars in Coffee Bean!',
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
              'Each voucher costs 200 EnviroCoin!',
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
                  counter -= 200;
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
                    Navigator.pushNamed(context, '/cbtl');
                  },
                  child: Card(
                    child: ListTile(
                      leading: Image.asset(
                          'assets/cbtllogo.jpg'
                      ),
                      title: Text(
                          '20% Coffee Bean Voucher'
                      ),
                      subtitle: Text(
                          'Tap to use'
                      ),
                      trailing: GestureDetector(
                        onTap: () {
                          setState(() {
                            isVisible = false;
                            counter += 200;
                          });
                        } ,
                        child: Icon(
                          Icons.cancel
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
