import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'login.dart';
import 'menu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Color(0xDD000000),
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cod3r Plus',
      theme: ThemeData(
        brightness: Brightness.dark,
        accentColor: Colors.white,
        canvasColor: Colors.grey[900],
      ),
      home: Login(),
      routes: {
        "/menu": (_) => new Menu(),
      },
    );
  }
}
