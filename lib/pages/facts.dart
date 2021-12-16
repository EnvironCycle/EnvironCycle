import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Facts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff81c684),
          title: Text(
            'Facts',
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
                'assets/facts1.png',
              ),
              Image.asset(
                'assets/facts2.png',
              ),
              Image.asset(
                  'assets/facts3.png'
              ),
            ],
          ),
        )
    );

  }
}

// all facts are in png (because they are self created by my team members)
