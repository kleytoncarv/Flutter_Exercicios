import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Minha Aplicação'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              // Função chamada quando o botão é pressionado
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Olá, mundo!'),
                ),
              );
            },
            child: Text('Pressione-me'),
          ),
        ),
      ),
    );
  }
}

