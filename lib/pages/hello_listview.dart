import 'package:flutter/material.dart';

class HelloListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: _body(),
    );
  }

  _body() {
    List<Image> imgs = [
      _img('assets/images/black-german.jpg'),
      _img('assets/images/dog.jpg'),
      _img('assets/images/husky.jpg'),
      _img('assets/images/pug.jpg'),
      _img('assets/images/rottweiler.jpg'),
      _img('assets/images/schafer.jpg'),
    ];

    return Container(
      color: Colors.lightBlueAccent,
      child: ListView.builder(
        itemCount: imgs.length,
        itemExtent: 300,
        itemBuilder: (context, index) {
          return imgs[index];
        },
      ),
    );
  }

  _img(String img) {
    return Image.asset(
      img,
      fit: BoxFit.cover,
    );
  }
}
