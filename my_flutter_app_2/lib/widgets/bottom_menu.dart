import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottoMenuItem {
  final String iconPath, label;

  BottoMenuItem({@required this.iconPath, this.label});
}

class BottomMenu extends StatelessWidget {
  final List<BottoMenuItem> items;

  BottomMenu({@required this.items})
      : assert(items != null && items.length > 0);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amberAccent,
      padding: EdgeInsets.all(10),
      child: SafeArea(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(items.length, (index) {
          final BottoMenuItem item = items[index];
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SvgPicture.asset(
                item.iconPath,
                width: 30,
              ),
              Text(item.label)
            ],
          );
        }),
      )),
    );
  }
}
