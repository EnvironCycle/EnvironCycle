import 'package:flutter/material.dart';
import 'package:environcycle_prototype/Redeem/Re1.dart';

class cov extends StatefulWidget {
  @override
  _covState createState() => _covState();
}

class _covState extends State<cov> {

  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Currently Owned Vouchers',
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontFamily: 'SourceSansPro',
                fontSize: 25.0,
              ),
        ),
      ),
      body: Column(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Here are the current vouchers that you have, tap on it to use them!',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
          Visibility(
            visible: isVisible ,
            child: Card(
              child: ListTile(
                leading: Image.asset(
                    'assets/cbtllogo.jpg'
                ),
                title: Text(
                    '20% Coffee Bean Voucher'
                ),
                subtitle: Text(
                    'Tap to use'
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            child: ListTile(
              leading: Image.asset(
                  'assets/GClogo.jpg'
              ),
              title: Text(
                  '10% Discount Gong Cha Voucher'
              ),
              subtitle: Text(
                  'Tap to use'
              ),
            ),
          ),
        ],
      ),
    );
  }
}
