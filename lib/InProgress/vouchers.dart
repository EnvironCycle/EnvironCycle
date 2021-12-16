import 'package:flutter/material.dart';

class Vouchers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
        'Vouchers',
        style: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 25.0,
          fontFamily: 'SourceSansPro',
        ),
      ),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/redeem');
            },
            child: Card(
              child: ListTile(
                leading: Icon(
                  Icons.money
                ),
                title: Text(
                    'Redeem Vouchers'
                ),
                subtitle: Text(
                    'Tap here to find out what vouchers can you redeem!',
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      )
    );
  }
}
