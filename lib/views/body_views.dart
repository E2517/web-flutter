import 'package:flutter/material.dart';
import 'package:e2517/utils/colors_utils.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'e2517'.toUpperCase(),
            style: TextStyle(
              color: kPrimaryColor,
              fontSize: 75.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Full Stack Developer \nLondon',
            style: TextStyle(
              fontSize: 50.0,
              color: kTextcolor,
            ),
          ),
          FittedBox(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color(0xFF372930),
                borderRadius: BorderRadius.circular(34),
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                      color: kDarkButton,
                      shape: BoxShape.circle,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF372930),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Text(
                    'Flutter Developer'.toUpperCase(),
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                    ),
                  ),
                  SizedBox(width: 15),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
