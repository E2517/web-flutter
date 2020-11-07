import 'package:flutter/material.dart';
import 'package:webflutter/views/appbar_views.dart';
import 'package:webflutter/views/body_views.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CustomAppBar(),
            Spacer(),
            Body(),
            Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
