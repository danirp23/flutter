import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircleContainer extends StatelessWidget {
  final Widget child;
  final double size;

  CircleContainer(
      {@required this.child, @required this.size})
      : assert(child != null),
        assert(size != null && size >= 10),

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      child: this.child,
      decoration: BoxDecoration(
          color: Color(0xfff0f0f0),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: Colors.black87, blurRadius: 10, offset: Offset(10, 10)),
            BoxShadow(
                color: Colors.amberAccent.withOpacity(0.5),
                blurRadius: 20,
                offset: Offset(10, 10))
          ]),
    );
  }
}
