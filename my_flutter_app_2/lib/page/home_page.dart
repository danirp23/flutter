import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/circle_container.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App cool"),
      ),
      body: Center(
        child: CircleContainer(child: Text("Holi"), width: 100, height: 100),
      ),
    );
  }
}
