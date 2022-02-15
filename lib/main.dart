import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const Ball());
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballImage = 1;

  changer() {
    // funcao para mudar as imagens da bola.
    setState(() {
      ballImage = Random().nextInt(5) + 1;
      // gera um numero aleatorio de 1 a 5 que corresponde as imagens da bola
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[500],
        appBar: AppBar(
          title: Text('ask me anything'),
          backgroundColor: Colors.blue[900],
        ),
        body: Center(
          // centraliza toda a estrutura do body
          child: Row(
            children: <Widget>[
              Expanded(
                // utiliza o maior espaço possivel
                child: TextButton(
                  onPressed: () {
                    changer();
                  },
                  child: Image.asset('images/ball$ballImage.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
