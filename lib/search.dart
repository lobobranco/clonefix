import 'package:flutter/material.dart';
import 'items/movieCard.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 8),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Container(
                width: 500,
                height: 40,
                child: Stack(
                  alignment: Alignment(-0.97, 0.16),
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          filled: true,
                          fillColor: Colors.grey[800],
                          labelText:
                              '       Busque por série, filme, gênero, etc.',
                          labelStyle: TextStyle(fontSize: 17)),
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.grey[600],
                      size: 30,
                    ),
                    Align(
                      alignment: Alignment(1.1, 0),
                      child: FlatButton(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        child:
                            Icon(Icons.mic, color: Colors.grey[600], size: 30),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 10, top: 7, bottom: 10),
              child: Text('Talvez você goste', style: TextStyle(fontSize: 25)),
            ),
          ],
        ),
        MovieCard(
          movieName: 'Castlevania',
          imgName: 'castle',
        ),
        MovieCard(
          movieName: 'Rick and Morty',
          imgName: 'rick',
        ),
      ],
    );
  }
}
