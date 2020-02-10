import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  final String movieName;
  final String imgName;

  MovieCard({
    @required this.movieName,
    this.imgName,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[850],
      child: Row(
        children: <Widget>[
          Image.asset(
            'assets/$imgName.png',
            height: 70,
            width: 140,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "$movieName",
              style: TextStyle(fontSize: 18),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: FlatButton(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onPressed: () {},
              child: Icon(
                Icons.play_arrow,
                size: 35,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
