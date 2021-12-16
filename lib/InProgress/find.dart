import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Find extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '20% Coffee Bean Voucher',
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
                SizedBox(height:20),
                  Image.asset('assets/qrcode.jpeg'),

            ],
            ),
          ),
    );
  }
}
