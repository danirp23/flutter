import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App cool"),
      ),
      body: Center(
        child: Text("Holi\n xd",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.green,
                fontSize: 25,
                fontWeight: FontWeight.w300,
                letterSpacing: 2.5,
                shadows: [
                  Shadow(
                      color: Colors.black, blurRadius: 3, offset: Offset(2, 1))
                ])),
      ),
    );
  }
}
