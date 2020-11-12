import 'package:flutter/material.dart';

class ShowDialogView {
  void showAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return Center(
            child: SingleChildScrollView(
              child: AlertDialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                backgroundColor: Color.fromRGBO(87, 35, 100, 0.8),
                actions: <Widget>[
                  _loginForm(context),
                ],
              ),
            ),
          );
        });
  }

  Widget _loginForm(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: <Widget>[
        Padding(
          padding: size.width > 700
              ? EdgeInsets.only(left: 80.0, right: 80.0)
              : EdgeInsets.only(left: 0, right: 0),
          child: Column(
            children: <Widget>[
              Text('Login', style: TextStyle(fontSize: 25.0)),
              SizedBox(height: 15.0),
              _createEmail(context),
              SizedBox(height: 30.0),
              _createPassword(context),
              SizedBox(height: 30.0),
              _createButton(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _createEmail(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      padding: size.width > 700
          ? EdgeInsets.symmetric(horizontal: 0.0)
          : EdgeInsets.symmetric(horizontal: 40.0),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            labelText: 'Enter your Email',
            hintText: 'Email',
            counterText: 'snapshot.data',
            errorText: 'snapshot.error'),
      ),
    );
  }

  Widget _createPassword(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      padding: size.width > 700
          ? EdgeInsets.symmetric(horizontal: 0.0)
          : EdgeInsets.symmetric(horizontal: 40.0),
      child: TextField(
        obscureText: true,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            labelText: 'Enter your Password',
            hintText: 'Password',
            counterText: 'snapshot.data',
            errorText: 'snapshot.error'),
      ),
    );
  }

  Widget _createButton() {
    return RaisedButton(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 10.0),
          child: Text('Enter', style: TextStyle(fontSize: 20.0)),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        elevation: 2.0,
        color: Colors.white,
        textColor: Colors.black,
        onPressed: () {});
  }
}
