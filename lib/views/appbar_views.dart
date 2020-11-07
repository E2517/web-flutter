import 'package:e2517/utils/colors_utils.dart';
import 'package:e2517/views/default_bottom_views.dart';
import 'package:e2517/views/menu_item_views.dart';
import 'package:flutter/material.dart';

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
                  flex: 0,
                  child: MenuItem(
                    title: "Login",
                    press: () {},
                  ),
                ),
                Flexible(
                  child: DefaultButton(
                    text: "Get Started",
                    press: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }
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
                  title: "Home",
                  press: () {},
                ),
              ),
              Flexible(
                child: MenuItem(
                  title: "about",
                  press: () {},
                ),
              ),
              Flexible(
                child: MenuItem(
                  title: "Contact",
                  press: () {},
                ),
              ),
              Flexible(
                flex: 0,
                child: MenuItem(
                  title: "Login",
                  press: () {},
                ),
              ),
              Flexible(
                child: DefaultButton(
                  text: "Get Started",
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
