import 'package:e2517/views/home_views.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Happy Coding with Flutter',
      theme: ThemeData.dark(),
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => HomeView(),
      },
      onUnknownRoute: (RouteSettings settings) {
        print('Route not founded: ${settings.name}');
        return MaterialPageRoute(builder: (context) => HomeView());
      },
    );
  }
}
