import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  final animes = const ['Rias', 'Sylphiette', 'Miku', 'Sinon', 'Aqua', 'Power'];

  final skullgirls = const [
    'Filia',
    'Fukua',
    'Cerebela',
    'Marie',
    'Ms.Fortune',
    'Parasoul',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ventana 3')),
      body: ListView(
        children: [
          ...animes.map(
            (anime) => ListTile(
              leading: Icon(Icons.pets_rounded),
              title: Text(anime),
              subtitle: Text('Un anime super bueno'),
              trailing: Icon(Icons.arrow_forward),
              tileColor: Color.fromARGB(111, 195, 230, 241),
              iconColor: Color.fromARGB(255, 64, 236, 255),
              textColor: Color.fromARGB(255, 64, 89, 255),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          Divider(),
          ...skullgirls.map(
            (skulgirl) => ListTile(
              leading: Icon(Icons.pets_rounded),
              title: Text(skulgirl),
              subtitle: Text('Una skulgirl muy guapa'),
              trailing: Icon(Icons.arrow_forward),
              tileColor: Color.fromARGB(115, 200, 250, 280),
              iconColor: Color.fromARGB(300, 70, 320, 280),
              textColor: Color.fromARGB(170, 24, 340, 125),
            ),
          ),
        ],
      ),
    );
  }
}
