import 'package:flutter/material.dart';

class Dog {
  String nome;
  String foto;

  Dog(this.nome, this.foto);
}

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
    List<Dog> dogs = [
      Dog('Pastor Alemão Negro', 'assets/images/black-german.jpg'),
      Dog('Cão Negro', 'assets/images/dog.jpg'),
      Dog('Husky Siberiano', 'assets/images/husky.jpg'),
      Dog('Pug', 'assets/images/pug.jpg'),
      Dog('Rottweiler', 'assets/images/rottweiler.jpg'),
      Dog('Pastor Alemão', 'assets/images/schafer.jpg'),
    ];

    return Container(
      color: Colors.lightBlueAccent,
      child: ListView.builder(
        itemCount: dogs.length,
        itemExtent: 300,
        itemBuilder: (context, index) {
          Dog dog = dogs[index];
          return _img(dog.foto);
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
