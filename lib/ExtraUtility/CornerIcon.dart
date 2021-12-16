import 'package:flutter/material.dart';


class CornerIcon extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final double width, height;

  const CornerIcon(
      {Key key,
      @required this.child,
      this.padding,
      this.width,
      this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
            border: Border.all(color: Color.fromRGBO(141, 141, 141, 1.0).withAlpha(40), width: 1)),
        padding: padding ?? const EdgeInsets.all(6.0),
        child: Center(child: child));
  }
}