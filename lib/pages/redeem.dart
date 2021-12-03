import 'package:flutter/material.dart';

class Redeem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:
        Text(
          'Redeem',
          style: TextStyle(
            fontFamily: 'SourceSansPro',
            fontSize: 25.0,
          ),
        ),
      ),
      body: Column(
        children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/re1');
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
                  'Tap to find out more'
      ),
    ),
    ),
        ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/re2');
            },
            child: Card(
              child: ListTile(
                leading: Image.asset(
                    'assets/GClogo.jpg'
                ),
                title: Text(
                    '10% Discount Gong Cha Voucher'
                ),
                subtitle: Text(
                    'Tap to find out more'
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}

