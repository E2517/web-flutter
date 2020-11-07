import 'package:e2517/utils/colors_utils.dart';
import 'package:e2517/views/default_bottom_views.dart';
import 'package:e2517/views/menu_item_views.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        children: <Widget>[
          Expanded(
            child: IconButton(
              icon: Icon(Icons.person),
              color: kPrimaryColor,
              onPressed: () {},
            ),
          ),
          SizedBox(width: 5),
          Expanded(
            child: Text(
              'e2517',
              style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Spacer(),
          Expanded(
            child: MenuItem(
              title: "Home",
              press: () {},
            ),
          ),
          Expanded(
            child: MenuItem(
              title: "about",
              press: () {},
            ),
          ),
          Expanded(
            child: MenuItem(
              title: "Contact",
              press: () {},
            ),
          ),
          Expanded(
            child: MenuItem(
              title: "Login",
              press: () {},
            ),
          ),
          Expanded(
            child: DefaultButton(
              text: "Get Started",
              press: () {},
            ),
          ),
        ],
      ),
    );
  }
}
