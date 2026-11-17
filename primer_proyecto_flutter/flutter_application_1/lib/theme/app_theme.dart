// El tema define colores, estilos y fuentes para la app.
// Constante de tema

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: const Color.fromARGB(255, 196, 199, 199),
    appBarTheme: AppBarTheme(
      color: Colors.blueAccent,
      titleTextStyle: GoogleFonts.shareTech(
        color: Colors.white,
        fontSize: 28.5,
      ),
    ),
  );
}
