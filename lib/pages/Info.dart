import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Information',
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 25.0,
            fontFamily: 'SourceSansPro',
          ),
        ),
        centerTitle: true,
      ),
          body: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/infoshort');
                  },
                child: Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.info
                    ),
                    title: Text(
                      'Short Information',
                    ),
                    subtitle: Text(
                      'If you have short amount of time to read, this will do!',
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/infolong');
                },
                child: Card(
                  child: ListTile(
                    leading: Icon(
                        Icons.info
                    ),
                    title: Text(
                      'Long Information',
                    ),
                    subtitle: Text(
                      'If you want to find out a more detailed information on recycling, this will do!',
                    ),
                  ),
                ),
              ),
            ],
          ),
    );
  }
}
