import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/circle_container.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App cool"),
      ),
      body: Center(
        child: CircleContainer(
            child: SvgPicture.asset(
              "assets/icons/menu.svg",
              width: 30,
              height: 30,
              color: Colors.blue,
            ),
            width: 100,
            height: 100),
      ),
    );
  }
}
