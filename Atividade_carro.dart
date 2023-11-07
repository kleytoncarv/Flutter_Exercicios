import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Carro Action',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Carro SENAI'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Carro carro = Carro('Toyota', 'Corolla', 2022);
  String actionsText = '';

  void _acelerar() {
    setState(() {
      carro.acelerar();
      actionsText = 'Acelerando o ${carro.marca} ${carro.modelo}';
    });
  }

  void _frear() {
    setState(() {
      carro.frear();
      actionsText = 'Freando o ${carro.marca} ${carro.modelo}';
    });
  }

  void _embreagem() {
    setState(() {
      carro.embreagem();
      actionsText = 'Embreagem no ${carro.marca} ${carro.modelo}';
    });
  }

  void _baixarvidro() {
    setState(() {
      carro.baixarvidro();
      actionsText = 'Baixando vidro do ${carro.marca} ${carro.modelo}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Ações do Carro',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 16),
            Text(
              actionsText,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _acelerar,
              child: Text('Acelerar'),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: _frear,
              child: Text('Frear'),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: _embreagem,
              child: Text('Embreagem'),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: _baixarvidro,
              child: Text('Baixar vidro'),
            )
          ],
        ),
      ),
    );
  }
}

class Carro {
  String marca;
  String modelo;
  int ano;

  Carro(this.marca, this.modelo, this.ano);

  void acelerar() {
    print('O $marca $modelo está acelerando');
  }

  void frear() {
    print('O $marca $modelo está freando!');
  }

  void embreagem() {
    print('O $marca $modelo está usando embreagem!');
  }

  void baixarvidro() {
    print('O $marca $modelo tá baixando os vidros!');
  }
}
