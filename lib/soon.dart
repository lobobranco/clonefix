import 'package:flutter/material.dart';
import 'items/moviePreview.dart';

class Soon extends StatelessWidget {
  final List<Widget> movies = [
    MoviePreview(
      movieName: 'Castlevania',
      imgName: 'cv',
      movieDate: 'quinta-feira',
      movieDesc:
          'Belmont e Sypha chegam a uma aldeia com segredos sinistros. Alucard orienta duas pessoas, e Isaac começa a procurar Hector.',
      movieType:
          'Sangrento - Violentos - Assustadores - Sombrios - Anome de terror',
    ),
    MoviePreview(
      movieName: 'Beastars',
      imgName: 'b',
      movieDate: '13 de março',
      movieDesc:
          'Em um mundo onde convite animais de todo tipo, um lobo manso começa a descobrir seus instintos predatórios justamente quando acontece um assassinato na escola.',
      movieType:
          'Psicológico - Anime com drama - Anime de fantasia - Escola - Animais',
    ),
    MoviePreview(
      movieName: 'Elite',
      imgName: 'e',
      movieDate: '13 de março',
      movieDesc:
          'Uma nova investigação tenta esclarecer o assassinato de outro colega. Os estudantes pensam no futuro, mas são atormentados pelo passado.',
      movieType:
          'Envolvente - De roer as unhas - Suspense no ar - Teen - Mistério - Drama',
    ),
  ];

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
        Expanded(
          child: ListView.separated(
              padding: EdgeInsets.only(
                bottom: 10,
              ),
              separatorBuilder: (context, index) => Divider(
                    color: Colors.black,
                    height: 5,
                  ),
              itemCount: movies.length,
              itemBuilder: (context, index) => movies[index]),
        ),
      ],
    );
  }
}
