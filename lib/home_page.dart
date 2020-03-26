import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello Flutter!'),
        centerTitle: true,
      ),
      body: _body(),
    );
  }

  _body() {
    return Container(
      color: Colors.lightBlueAccent,
      child: Center(
        child: SizedBox.expand(
          child: _img(),
        ),
      ),
    );
  }

  _img() {
    return Image.asset(
      'assets/images/black-german.jpg',
      fit: BoxFit.cover,
    );
  }

  /* _text() {
    return Text(
      'Hello World!!!',
      style: TextStyle(
        letterSpacing: 1.8,
        fontSize: 30,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        color: Colors.white,
        decoration: TextDecoration.underline,
        decorationColor: Colors.yellow,
        decorationStyle: TextDecorationStyle.wavy,
      ),
    );
  } */
}
