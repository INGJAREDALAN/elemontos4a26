// El tema define colores, estilos y fuentes para la app.
// Constante de tema

import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData appTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: const Color.fromARGB(255, 196, 199, 199),
    appBarTheme: AppBarTheme(
      color: Colors.blueAccent,
      titleTextStyle: GoogleFonts.lato(
        color: Colors.white,
        fontSize: 28.5,
        FontWeight: FontWeight.bold,
      ),
    ),
  );
}
