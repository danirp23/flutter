import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'circle_container.dart';

class Avatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      child: Stack(
        children: <Widget>[
          SvgPicture.network(
              'https://www.flaticon.com/svg/vstatic/svg/1177/1177568.svg?token=exp=1617721622~hmac=2ec03aa00edbe4404bdfcdc884b86bce'),
          Positioned(
            child: CircleContainer(
              child: Icon(Icons.edit),
              size: 60,
            ),
            right: 0,
            top: 0,
          )
        ],
      ),
    );
  }
}
