import 'package:flutter/material.dart';

class HelloPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 3'),
      ),
      body: _body(context),
    );
  }

  _body(context) {
    return Container(
      color: Colors.lightBlueAccent,
      child: Center(
        child: RaisedButton(
          color: Colors.blue,
          child: Text(
            'Voltar',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          onPressed: () => _onClickVoltar(context),
        ),
      ),
    );
  }

  _onClickVoltar(context) {
    Navigator.pop(context, 'Tela 3');
  }
}
