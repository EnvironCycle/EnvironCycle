import 'package:flutter/material.dart';

class InfoLong extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xff81c684),
          title: Text(
          'Information (Long)',
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
                'assets/tip1.jpeg',
              ),
              Image.asset(
                'assets/tip2.jpeg',
              ),
              Image.asset(
                'assets/tip3.jpeg'
              ),
            ],
              ),
        )
    );
//pictures on the long infos
  }
}
