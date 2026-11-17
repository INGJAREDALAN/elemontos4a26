import 'package:flutter/material.dart';

class Screen6 extends StatelessWidget {
  final String nombre;
  final bool gustaFlutter;
  final double nivelFlutter;
  final int radioSelected;
  final bool emulador;
  final bool smartphone;
  final bool navegadorWeb;

  const Screen6({
    super.key,
    required this.nombre,
    required this.gustaFlutter,
    required this.nivelFlutter,
    required this.radioSelected,
    required this.emulador,
    required this.smartphone,
    required this.navegadorWeb,
  });

  @override
  Widget build(BuildContext context) {
    final preferencias = ['Ninguna', 'Kotlin', 'Flutter', 'React Native'];

    final usos = [
      if (emulador) 'Emulador',
      if (smartphone) 'Smartphone',
      if (navegadorWeb) 'Navegador Web',
    ];

    return Scaffold(
      appBar: AppBar(title: Text('Screen 6')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Datos guardados'),
          _dato('Nombre', nombre),
          _dato('¿Te gusta flutter?', gustaFlutter ? 'Sí' : 'No'),
          _dato('Cuánto te gusta flutter', '${nivelFlutter.round()} / 10'),
          _dato('Prefieres para móvil', preferencias[radioSelected]),
          _dato('Usas para correr tus apps', usos.join(', ')),
        ],
      ),
    );
  }

  Widget _dato(String titulo, String valor) {
    return Text('$titulo: $valor');
  }
}
