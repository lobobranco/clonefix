import 'package:flutter/material.dart';

class MovieCircle extends StatelessWidget {
  final String imgName;

  MovieCircle({
    @required this.imgName,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8, right: 8),
      child: Container(
        width: 93,
        height: 93,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: ExactAssetImage('assets/$imgName.png'),
          ),
        ),
      ),
    );
  }
}
