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
    return SingleChildScrollView(
      child: Container(
        color: Colors.lightBlueAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _text(),
            _pageView(),
            _buttons(),
            _text(),
            _pageView(),
            _buttons(),
          ],
        ),
      ),
    );
  }

  _pageView() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 60),
      height: 300,
      child: PageView(
        children: <Widget>[
          _img('assets/images/black-german.jpg'),
          _img('assets/images/dog.jpg'),
          _img('assets/images/husky.jpg'),
          _img('assets/images/pug.jpg'),
          _img('assets/images/rottweiler.jpg'),
          _img('assets/images/schafer.jpg'),
        ],
      ),
    );
  }

  _buttons() {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _button('ListView'),
            _button('Page 2'),
            _button('Page 3'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _button('Snack'),
            _button('Dialog'),
            _button('Toast'),
          ],
        ),
      ],
    );
  }

  _button(String text) {
    return RaisedButton(
      color: Colors.blue,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      onPressed: () => _onClickOk(),
    );
  }

  void _onClickOk() {
    print('Clicou no botão...');
  }

  _img(String img) {
    return Image.asset(
      img,
      fit: BoxFit.cover,
    );
  }

  _text() {
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
  }
}
