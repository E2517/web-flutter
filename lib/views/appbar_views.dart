import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:e2517/utils/alert_utils.dart' as alert;
import 'package:e2517/utils/colors_utils.dart';
import 'package:e2517/views/default_bottom_views.dart';
import 'package:e2517/views/menu_item_views.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    if (size.width < 700) {
      return Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(46),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -2),
              blurRadius: 30,
              color: Colors.black.withOpacity(0.16),
            ),
          ],
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 18,
              backgroundImage: AssetImage('assets/images/avatar.png'),
            ),
            Spacer(),
            DefaultButton(
              text: 'Login',
              press: () {
                alert.ShowDialogView().showAlert(context);
              },
            ),
          ],
        ),
      );
    } else {
      return Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(46),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -2),
              blurRadius: 30,
              color: Colors.black.withOpacity(0.16),
            ),
          ],
        ),
        child: Row(
          children: [
            IconButton(
              icon: Icon(Icons.person),
              color: kPrimaryColor,
              onPressed: () {},
            ),
            Spacer(),
            MenuItem(
                title: 'home',
                press: () => Navigator.pushNamed(context, 'home')),
            MenuItem(
                title: 'About',
                press: () =>
                    html.window.open('https://github.com/E2517', 'e2517')),
            MenuItem(
                title: 'contact',
                press: () =>
                    html.window.open('https://github.com/E2517', 'e2517')),
            MenuItem(
              title: 'login',
              press: () {
                alert.ShowDialogView().showAlert(context);
              },
            ),
            DefaultButton(
                text: 'GitHub',
                press: () =>
                    html.window.open('https://github.com/E2517', 'e2517')),
          ],
        ),
      );
    }
  }
}
