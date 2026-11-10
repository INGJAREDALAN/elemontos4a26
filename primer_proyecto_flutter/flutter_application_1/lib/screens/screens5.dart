import 'package:flutter/material.dart';

class Screens5 extends StatefulWidget {
  const new({super.key});

  @override
  State<Screens5> createState() => _Screens5State();
}

class _Screens5State extends State<Screens5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen 5')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Entrada de datos'),
          // Llamadas a los widgets de entrada de datos
          _entradaTexto(),
        ],
      ),
    );
  }

  TextField _entradaTexto() {
    return TextField(
      decoration: InputDecoration(
        labelText: 'Nombre',
        hintText: 'Ingresa tu nombre',
        border: OutlineInputBorder(),
      ),
    );
  }
}
