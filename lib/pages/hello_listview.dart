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
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.list),
            onPressed: () {
              print('Lista');
            },
          ),
          IconButton(
            icon: Icon(Icons.grid_on),
            onPressed: () {
              print('Grade');
            },
          ),
        ],
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
      child: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: dogs.length,
        //itemExtent: 300,
        itemBuilder: (context, index) {
          Dog dog = dogs[index];
          return Stack(
            fit: StackFit.expand,
            children: <Widget>[
              _img(dog.foto),
              Container(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.only(bottom: 12),
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.white38,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    dog.nome,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          );
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
