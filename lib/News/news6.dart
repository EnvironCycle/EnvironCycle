import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class News6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Sixth News',
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
                'assets/News6P2.jpeg',
              ),
              Image.asset(
                'assets/News6P1.jpeg',
              ),
            ],
          ),
        )
    );

  }
}