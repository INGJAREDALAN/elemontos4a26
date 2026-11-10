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

  final Map<String, String> skulgirlss = const {
    'Filia': 'assets/imagenes/skulgirl1.jpg',
    'Fukua': 'assets/imagenes/skulgirl2.jpg',
    'Cerebela': 'assets/imagenes/skulgirl3.jpg',
    'Marie': 'assets/imagenes/skulgirl4.jpg',
    'Ms..Fortune': 'assets/imagenes/skulgirl5.jpg',
    'Parasoul': 'assets/imagenes/skulgirl6.jpg',
  };

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

          ...skulgirlss.entries.map((skulgirl) {
            return _tileSkulgirls(
              skulgirl.key,
              skulgirl.value,
              Colors.lightBlueAccent,
              Colors.red,
              Colors.white,
            );
          }),
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

  Widget _tileSkulgirls(
    String skulgirlName,
    String skulgirlImage,
    Color tileColor,
    Color iconColor,
    Color textColor,
  ) {
    final tile = ListTile(
      leading: Image.asset(skulgirlImage, width: 60, height: 60),
      title: Text(skulgirlName),
      subtitle: Text('Una skulgirl muy linda'),
      trailing: Icon(Icons.arrow_forward),
      tileColor: tileColor,
      iconColor: iconColor,
      textColor: textColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    );
    final espacio = SizedBox(height: 15);
    return Column(children: [tile, espacio]);
  }
}
