import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pantalla 2',
          style: TextStyle(color: Colors.cyanAccent),
        ),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            mostrarImagen(1),
            SizedBox(width: 30),
            mostrarImagen(2),
            SizedBox(width: 30),
            mostrarImagen(3),
            SizedBox(width: 30),
          ],
        ),
      ),
    );
  }

  Widget mostrarImagen(int numImagen) {
    String nombreImagen = '';
    switch (numImagen) {
      case 1:
        nombreImagen = 'assets/imagenes/anime1';
        break;
      case 2:
        nombreImagen = 'assets/imagenes/anime2';
        break;
      case 3:
        nombreImagen = 'assets/imagenes/anime3';
        break;
    }
    return Image.asset(nombreImagen, width: 120, height: 120, fit: BoxFit.fill);
  }
}
