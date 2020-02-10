import 'package:flutter/material.dart';
import 'items/movieCard.dart';

class Search extends StatelessWidget {
  final List<Widget> movies = [
    MovieCard(
      movieName: 'AAAAAAAAAAAAAAAAAAAAAAA',
      imgName: 'castle',
    ),
    MovieCard(
      movieName: 'Rick and Morty',
      imgName: 'rick',
    ),
    MovieCard(
      movieName: 'Castlevania',
      imgName: 'castle',
    ),
    MovieCard(
      movieName: 'Rick and Morty',
      imgName: 'rick',
    ),
    MovieCard(
      movieName: 'Castlevania',
      imgName: 'castle',
    ),
    MovieCard(
      movieName: 'Rick and Morty',
      imgName: 'rick',
    ),
    MovieCard(
      movieName: 'Castlevania',
      imgName: 'castle',
    ),
    MovieCard(
      movieName: 'Rick and Morty',
      imgName: 'rick',
    ),
    MovieCard(
      movieName: 'Castlevania',
      imgName: 'castle',
    ),
    MovieCard(
      movieName: 'Rick and Morty',
      imgName: 'rick',
    ),
    MovieCard(
      movieName: 'Castlevania',
      imgName: 'castle',
    ),
    MovieCard(
      movieName: 'Rick and Morty',
      imgName: 'rick',
    ),
    MovieCard(
      movieName: 'Castlevania',
      imgName: 'castle',
    ),
    MovieCard(
      movieName: 'Rick and Morty',
      imgName: 'rick',
    ),
    MovieCard(
      movieName: 'Castlevania',
      imgName: 'castle',
    ),
    MovieCard(
      movieName: 'Rick and Morty',
      imgName: 'rick',
    )
  ];

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
                  alignment: Alignment.centerLeft,
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey[600],
                          size: 30,
                        ),
                        filled: true,
                        fillColor: Colors.grey[800],
                        hintText: 'Busque por série, filme, gênero, etc.',
                        hintStyle: TextStyle(fontSize: 17),
                        suffixIcon: GestureDetector(
                          child: Icon(Icons.mic,
                              color: Colors.grey[600], size: 30),
                          onTap: () {},
                        ),
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
              padding: EdgeInsets.only(left: 10, top: 12, bottom: 12),
              child: Text('Talvez você goste', style: TextStyle(fontSize: 22)),
            ),
          ],
        ),
        Expanded(
          child: ListView.separated(
              padding: const EdgeInsets.only(bottom: 8),
              separatorBuilder: (context, index) => Divider(
                    color: Colors.black,
                    height: 2,
                  ),
              itemCount: movies.length,
              itemBuilder: (context, index) => movies[index]),
        )
      ],
    );
  }
}
