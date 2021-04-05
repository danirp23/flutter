import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircleContainer extends StatelessWidget {
  final Widget child;
  final double width, height;

  CircleContainer(
      {@required this.child, @required this.height, @required this.width})
      : assert(child != null),
        assert(width != null && width >= 100),
        assert(height != null && height >= 100);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      alignment: Alignment.center,
      child: this.child,
      decoration: BoxDecoration(
          color: Color(0xfff0f0f0),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: Colors.black87, blurRadius: 10, offset: Offset(10, 10)),
            BoxShadow(
                color: Colors.blueAccent.withOpacity(0.5),
                blurRadius: 20,
                offset: Offset(10, 10))
          ]),
    );
  }
}
