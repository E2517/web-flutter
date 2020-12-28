import 'package:flutter/material.dart';
import 'package:e2517/views/home_views.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'e2517 | Flutter Web',
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
