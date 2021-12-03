import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Find2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '10% Gong Cha Voucher',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'SourceSansPro',
            fontSize: 25.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
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
            SizedBox(height:20),
              Image.asset('assets/qrcode.jpeg'),

          ],
        ),
      ),
    );
  }
}
