import 'package:flutter/material.dart';
import 'items/movieCircle.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: ExactAssetImage('assets/totoro.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          children: [
            SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10, left: 8),
                    child: Image.asset(
                      'assets/icon.png',
                      height: 30,
                      width: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                      'Séries',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                      'Filmes',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, right: 20),
                    child: Text(
                      'Minha lista',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 30),
          child: Center(
            child: Text('Anime - filme    Anime de fantasia'),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, top: 115),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FlatButton(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.add, color: Colors.white, size: 30),
                      Text('Minha lista'),
                    ],
                  ),
                  onPressed: () {},
                ),
                Container(
                  height: 35,
                  width: 130,
                  child: FlatButton(
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.play_arrow, color: Colors.black, size: 30),
                        Text(
                          'Assistir',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
                FlatButton(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.info_outline, color: Colors.white, size: 25),
                      Text('Saiba mais'),
                    ],
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
        Container(
          child: Padding(
            padding: EdgeInsets.only(left: 10, top: 480),
            child: Text('Prévias'),
          ),
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.only(top: 350),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  MovieCircle(imgName: 'avatar2'),
                  MovieCircle(imgName: 'bb2'),
                  MovieCircle(imgName: 'castle2'),
                  MovieCircle(imgName: 'dark2'),
                  MovieCircle(imgName: 'hp2'),
                  MovieCircle(imgName: 'rick2'),
                  MovieCircle(imgName: 'sabrina2'),
                  MovieCircle(imgName: 'sex2'),
                  MovieCircle(imgName: 'st2'),
                  MovieCircle(imgName: 'vikings2'),
                  MovieCircle(imgName: 'witcher2'),
                ],
              ),
            ),
          ),
        ),
        Container(
          child: Padding(
            padding: EdgeInsets.only(left: 10, top: 610),
            child: Text('Séries para Maratonar'),
          ),
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.only(top: 630),
            child: GridView.count(
              primary: false,
              padding: EdgeInsets.all(8),
              crossAxisSpacing: 5,
              mainAxisSpacing: 1,
              crossAxisCount: 3,
              childAspectRatio: (75 / 150),
              children: <Widget>[
                Container(
                  width: 300,
                  height: 500,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: ExactAssetImage('assets/bojack.png'),
                    ),
                  ),
                ),
                Container(
                  width: 300,
                  height: 500,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: ExactAssetImage('assets/orange.png'),
                    ),
                  ),
                ),
                Container(
                  width: 300,
                  height: 500,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: ExactAssetImage('assets/friends.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
