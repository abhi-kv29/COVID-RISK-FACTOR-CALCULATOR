import 'package:flutter/material.dart';
import 'input_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('COVID EXPOSURE CALCULATOR'),
        centerTitle: true,
      ),
      body: Center(
        child: ButtonTheme(
          minWidth: 20.0,
          height: 70.0,
          child: RaisedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InputPage()));
            },
            color: Colors.pink,
            child: Text(
              'TAKE TEST',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
