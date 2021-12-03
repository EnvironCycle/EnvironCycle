import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoShort extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff81c684),
          title: Text(
            'Information (Short)',
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
                'assets/stip3.JPG',
              ),
              Image.asset(
                'assets/stip2.JPG',
              ),
              Image.asset(
                  'assets/stip1.JPG'
              ),
            ],
          ),
        )
    );

  }
}
