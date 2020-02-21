import 'package:flutter/material.dart';
import 'chewie_list_item.dart';
import 'package:video_player/video_player.dart';

class Soon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 15, left: 15),
                child: Icon(Icons.notifications_none,
                    color: Colors.grey[600], size: 30),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, left: 15, right: 220),
                child: Text('Notificações'),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, right: 7),
                child: Icon(Icons.navigate_next,
                    color: Colors.grey[600], size: 30),
              ),
            ],
          ),
        ),
        ChewieListItem(
          videoPlayerController: VideoPlayerController.asset(
            'assets/video.mp4',
          ),
          looping: true,
        ),
      ],
    );
  }
}
