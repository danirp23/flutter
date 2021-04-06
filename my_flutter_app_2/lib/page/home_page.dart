import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app_2/widgets/avatar.dart';
import 'package:my_flutter_app_2/widgets/bottom_menu.dart';
import '../widgets/circle_container.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomMenu(
        items: [
          BottoMenuItem(iconPath: 'assets/icons/home.svg', label: 'Inicio'),
          BottoMenuItem(iconPath: 'assets/icons/menu.svg', label: 'Menu'),
          BottoMenuItem(
              iconPath: 'assets/icons/history.svg', label: 'Historial'),
          BottoMenuItem(
              iconPath: 'assets/icons/checkmark.svg', label: 'Ofertas'),
        ],
      ),
      body: SafeArea(
        top: true,
        bottom: true,
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Avatar(),
              SizedBox(height: 20),
              Text("Helow"),
              Text(
                "Dani",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              TextButton.icon(
                icon: Icon(Icons.camera),
                label: Text('Take A Photo'),
                onPressed: () {},
              ),
              Container(
                height: 1,
                width: 100,
                margin: EdgeInsets.symmetric(vertical: 20),
                color: Colors.amber,
              ),
              TextButton(
                child: Text("UPLOAD", style: TextStyle(color: Colors.blue)),
                onPressed: () => print("uploading"),
              ),
              CupertinoButton(
                child: Text("UPLOAD"),
                color: Colors.blue,
                minSize: 30,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                onPressed: () => print("uploading"),
              )
              /* Row(
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
                  Container(
                      width: 100, height: 100, color: Colors.amber.shade300)
                ],
              ) */
            ],
          ),
        ),
      ),
    );
  }
}
