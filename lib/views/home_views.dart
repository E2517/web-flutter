import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FULL STAK DEVELOPER',
            style: TextStyle(fontSize: 36.0, color: Colors.yellow)),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            child: Text(
              'e2517',
              style: TextStyle(fontSize: 40.0, color: Colors.yellow),
            ),
          ),
          ListTile(
              leading: Icon(Icons.person_add),
              title: Text('Flutter Developer'),
              subtitle: Text('Bloc Pattern'),
              trailing: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pushNamed(context, 'blog');
                },
              )),
        ],
      ),
    );
  }
}
