import 'package:flutter/material.dart';
import 'package:flutterbasicwidgets/pages/hello_listview.dart';
import 'package:flutterbasicwidgets/pages/hello_page2.dart';
import 'package:flutterbasicwidgets/pages/hello_page3.dart';
import 'package:flutterbasicwidgets/utils/nav.dart';
import 'package:flutterbasicwidgets/widgets/blue_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello Flutter!'),
        centerTitle: true,
      ),
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return Container(
      color: Colors.lightBlueAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _text(),
          _pageView(),
          _buttons(context),
        ],
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

  _buttons(context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            BlueButton('ListView',
                onPressed: () => _onClickNavigator(context, HelloListView())),
            BlueButton('Page 2',
                onPressed: () => _onClickNavigator(context, HelloPage2())),
            BlueButton('Page 3',
                onPressed: () => _onClickNavigator(context, HelloPage3())),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            BlueButton('Snack', onPressed: _onClickSnack),
            BlueButton('Dialog', onPressed: _onClickDialog),
            BlueButton('Toast', onPressed: _onClickToast),
          ],
        ),
      ],
    );
  }

  void _onClickNavigator(BuildContext context, Widget page) async {
    String s = await push(context, page);

    print('Page: $s');
  }

  _onClickSnack() {}

  _onClickDialog() {}

  _onClickToast() {}

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
