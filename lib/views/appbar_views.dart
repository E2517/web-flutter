import 'package:flutter/material.dart';
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
        child: Stack(
          children: [
            IconButton(
              icon: Icon(Icons.person),
              color: kPrimaryColor,
              onPressed: () {},
            ),
            Positioned(
              left: 45.0,
              child: Text(
                'e2517',
                style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Flexible(
                  child: DefaultButton(
                    text: 'Login',
                    press: () {
                      alert.ShowDialogView().showAlert(context);
                    },
                  ),
                ),
              ],
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
        child: Stack(
          children: [
            Row(
              children: [
                Flexible(
                  child: IconButton(
                    icon: Icon(Icons.person),
                    color: kPrimaryColor,
                    onPressed: () {},
                  ),
                ),
                SizedBox(width: 5),
                Flexible(
                  child: Text(
                    'e2517',
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Flexible(
                  child: MenuItem(
                    title: 'home',
                    press: () {
                      Navigator.pushNamed(context, 'home');
                    },
                  ),
                ),
                Flexible(
                  child: MenuItem(
                    title: 'About',
                    press: () {},
                  ),
                ),
                Flexible(
                  child: MenuItem(
                    title: 'contact',
                    press: () {},
                  ),
                ),
                Flexible(
                  flex: 0,
                  child: MenuItem(
                    title: 'login',
                    press: () {
                      alert.ShowDialogView().showAlert(context);
                    },
                  ),
                ),
                Flexible(
                  child: DefaultButton(
                    text: 'Get Started',
                    press: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }
  }
}
