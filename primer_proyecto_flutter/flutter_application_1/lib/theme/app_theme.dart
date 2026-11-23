// El tema define colores, estilos y fuentes para la app.
// Constante de tema

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Definicion de los colores para el tema calro

  static const primaryColor = Color.fromARGB(255, 59, 100, 110);
  static const secondaryColor = Color.fromARGB(255, 62, 51, 84);
  static const backColor = Color.fromARGB(236, 21, 47, 55);
  static const accentColor = Color.fromARGB(255, 246, 213, 3);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: const Color.fromARGB(238, 0, 195, 239),
    appBarTheme: AppBarTheme(
      color: const Color.fromARGB(255, 0, 94, 255),
      titleTextStyle: GoogleFonts.shareTech(
        color: Colors.white,
        fontSize: 28.5,
      ),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(primaryColor),
        foregroundColor: WidgetStateProperty.all(accentColor),
        textStyle: WidgetStateProperty.all(
          GoogleFonts.pacifico(fontSize: 16.0),
        ),
      ),
    ),

    textTheme: TextTheme(
      // Definir Los estilos para textos grandes
      headlineLarge: GoogleFonts.getFont(
        'Inter',
        color: primaryColor,
        fontSize: 25.5,
        fontWeight: FontWeight.w500,
      ),

      // Estilo de texto para texto pequeño
      bodySmall: GoogleFonts.montserrat(color: secondaryColor, fontSize: 14.6),
    ),
  );
}
