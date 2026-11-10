import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/screens2.dart';
import 'package:flutter_application_1/screens/screens3.dart';
import 'package:flutter_application_1/screens/screens4.dart';
import 'package:flutter_application_1/screens/screens5.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 1', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.lightBlue,
      ),
      body: Container(
        color: Color.fromARGB(255, 176, 161, 203),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              boton('Ejemplo de Rows', Colors.green, context, Screen2()),
              SizedBox(height: 20),
              boton('Ejemplo de ListView', Colors.red, context, Screen3()),
              SizedBox(height: 20),
              boton('Entrada de datos', Colors.black, context, Screen4()),
              SizedBox(height: 20),
              botonStateful(
                'Elementos de entrada',
                Colors.lightBlueAccent,
                context,
                Screens5(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget boton(
    String texto,
    Color color1,
    BuildContext context,
    StatelessWidget screen,
  ) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: color1,
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(30),
        ),
      ),
      child: Text(texto, style: TextStyle(color: Colors.white, fontSize: 20)),
    );
  }

  Widget botonStateful(
    String texto,
    Color color1,
    BuildContext context,
    StatefulWidget screen,
  ) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: color1,
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(30),
        ),
      ),
      child: Text(texto, style: TextStyle(color: Colors.white, fontSize: 20)),
    );
  }
}
