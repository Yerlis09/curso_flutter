import 'package:flutter/material.dart';

class HomePageTemps extends StatelessWidget {
  final opciones = ['Flor', 'Rosa', 'Margarita', 'Tulipanes'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Component Temp'),
      ),
      body: ListView(children: _crearItemsCorto()),
    );
  }

  /*List<Widget> _crearItems() {
    List<Widget> lista = List<Widget>();

    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );

      lista..add(tempWidget)..add(Divider());
    }
    return lista;
  }*/

  List<Widget> _crearItemsCorto() {
    return opciones.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('hola soy bella'),
            leading: Icon(Icons.deck_sharp),
            trailing: Icon(Icons.arrow_back_ios_rounded),
            onTap: () {},
          ),
          Divider(),
        ],
      );
    }).toList();
  }
}
