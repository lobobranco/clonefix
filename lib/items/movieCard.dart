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
      height: 70,
      width: MediaQuery.of(context).size.width,
      color: Colors.grey[850],
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
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
                    style: TextStyle(color: Colors.white, fontSize: 15),
                    maxLines: 2,
                    overflow: TextOverflow.clip,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 20),
                // color: Colors.green,
                child: Icon(
                  Icons.play_arrow,
                  size: 30,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
