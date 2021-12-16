import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class News1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'First News',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 25.0,
              fontFamily: 'Josefin',
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Image.asset(
                'assets/News1P2.jpeg',
              ),
              Image.asset(
                'assets/News1P1.jpeg',
              ),
            ],
          ),
        )
    );

  }
}