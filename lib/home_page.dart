import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello Flutter!'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.lightBlueAccent,
      ),
    );
  }
}
