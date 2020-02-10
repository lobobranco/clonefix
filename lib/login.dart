import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/netflix.png',
          height: 220,
          width: 110,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 4),
                child: TextField(
                  // obscureText: true,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.grey[800],
                      labelText: 'Email',
                      labelStyle: TextStyle(fontSize: 17)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 4, bottom: 4),
                child: Stack(
                  alignment: const Alignment(1.0, 0.3),
                  children: <Widget>[
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Colors.grey[800],
                        labelText: 'Senha',
                        labelStyle: TextStyle(fontSize: 17),
                      ),
                    ),
                    FlatButton(
                      onPressed: _toggle,
                      child: new Text(_obscureText ? "MOSTRAR" : "ESCONDER",
                          style:
                              TextStyle(fontSize: 18, color: Colors.grey[600])),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 4),
                child: SizedBox(
                  width: 500,
                  height: 50,
                  child: OutlineButton(
                    color: Colors.grey[900],
                    highlightedBorderColor: Colors.grey[900],
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, "/menu");
                    },
                    child: Text(
                      'Entrar',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Text('Recuperar senha'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
