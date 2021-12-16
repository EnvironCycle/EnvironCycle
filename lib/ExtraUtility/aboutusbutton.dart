import 'package:flutter/material.dart';


class AUButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final double width;

  const AUButton({Key key, @required this.text, @required this.icon, @required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: FlatButton(
          color: Color.fromRGBO(20, 25, 45, 1.0),
          splashColor: Colors.white.withAlpha(55),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          onPressed: () {
            Navigator.pushNamed(context, '/au');
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              SizedBox(height:10),
              Text(
                text,
                style: TextStyle(color: Colors.white),
              )
            ],
          )),
    );
  }
}