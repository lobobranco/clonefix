import 'package:flutter/material.dart';
import '../chewie_list_item.dart';
import 'package:video_player/video_player.dart';

class MoviePreview extends StatelessWidget {
  final String movieName;
  final String imgName;
  final String movieDate;
  final String movieDesc;
  final String movieType;

  MoviePreview({
    @required this.movieName,
    @required this.imgName,
    @required this.movieDate,
    @required this.movieDesc,
    @required this.movieType,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ChewieListItem(
          videoPlayerController: VideoPlayerController.asset(
            'assets/cv.mp4',
          ),
          looping: true,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Image.asset(
                'assets/$imgName.png',
                height: 50,
                width: 150,
              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.notifications_none,
                          color: Colors.white, size: 25),
                      Text('Receber aviso', style: TextStyle(fontSize: 10)),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8, right: 10),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.share, color: Colors.white, size: 25),
                      Text('Compartilhe', style: TextStyle(fontSize: 10)),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.only(left: 12, top: 4),
          child: Text(
            'Estreia da proxima temporada: $movieDate',
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 12, top: 10),
          child: Text(
            '$movieName',
            style: TextStyle(fontSize: 17),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 12, top: 2, right: 12),
          child: Text(
            '$movieDesc',
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 12, top: 5),
          child: Text(
            '$movieType',
            style: TextStyle(fontSize: 11, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
