import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/circle_container.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        top: true,
        bottom: true,
        child: Container(
          width: double.infinity,
          color: Colors.grey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text("Helow"),
              Text(
                "Dani",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 1,
                width: 100,
                margin: EdgeInsets.symmetric(vertical: 20),
                color: Colors.amber,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    children: [
                      Text("14K"),
                      SizedBox(
                        width: 10,
                      ),
                      CircleContainer(
                          child: Icon(Icons.remove), height: 50, width: 50),
                    ],
                  ),
                  CircleContainer(
                      child: Icon(Icons.add), height: 50, width: 50),
                  Container(width: 100, height: 100, color: Colors.red)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
