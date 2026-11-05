import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  final Map<String, String> animess = const {
    'Rias': 'assets/imagenes/anime1.jpg',
    'Sylphiette': 'assets/imagenes/anime2.jpg',
    'Miku': 'assets/imagenes/anime3.jpg',
    'Sinon': 'assets/imagenes/anime4.jpg',
    'Aqua': 'assets/imagenes/anime5.jpg',
    'Power': 'assets/imagenes/anime6.jpg',
  };

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
          ...animess.entries.map((anime) {
            return _tileAnime(
              anime.key,
              anime.value,
              Colors.blueAccent,
              Colors.amberAccent,
              Colors.white,
            );
          }),

          Divider(),
          ...skullgirls.map(
            (skulgirl) => ListTile(
              leading: Icon(Icons.pets_rounded),
              title: Text(skulgirl),
              subtitle: Text('Una skulgirl muy guapa'),
              trailing: Icon(Icons.arrow_forward),
              tileColor: Color.fromARGB(115, 200, 208, 255),
              iconColor: Color.fromARGB(300, 70, 320, 280),
              textColor: Color.fromARGB(170, 24, 340, 125),
            ),
          ),
        ],
      ),
    );
  }

  Widget _tileAnime(
    String animeName,
    String animeImage,
    Color tileColor,
    Color iconColor,
    Color textColor,
  ) {
    final tile = ListTile(
      leading: Image.asset(animeImage, width: 50, height: 50),
      title: Text(animeName),
      subtitle: Text('Un anime super bueno'),
      trailing: Icon(Icons.arrow_forward),
      tileColor: tileColor,
      iconColor: iconColor,
      textColor: textColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    );
    final espacio = SizedBox(height: 10);
    return Column(children: [tile, espacio]);
  }
}
