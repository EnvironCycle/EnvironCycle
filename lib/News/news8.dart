import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class News8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Eighth News',
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
                'assets/News8P1.jpg',
              ),
            ],
          ),
        )
    );

  }
}