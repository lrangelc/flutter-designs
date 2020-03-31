import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final titulo = 'Oeschinen Lake Campground';
  final subtitulo = 'Kandersteg, Switzerland';
  final estrellas = 41;

  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubtitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _generaImage(),
            _generaTitulo(),
            _generaBotones(),
            _generaDescripcion(),
            _generaDescripcion(),
            _generaDescripcion(),
            _generaDescripcion(),
            _generaDescripcion(),
            _generaDescripcion(),
          ],
        ),
      ),
    );
  }

  Widget _generaImage() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage(
            'https://images.pexels.com/photos/814499/pexels-photo-814499.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
        height: 200.0,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _generaTitulo() {
    Widget secEstrella = Icon(
      Icons.star,
      color: Colors.red,
      size: 30.0,
    );

    Widget secCantidadEstrella = Text(
      estrellas.toString(),
      style: TextStyle(fontSize: 20.0),
    );

    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    titulo,
                    style: estiloTitulo,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    subtitulo,
                    style: estiloSubtitulo,
                  )
                ],
              ),
            ),
            secEstrella,
            secCantidadEstrella
          ],
        ),
      ),
    );
  }

  Widget _generaBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        _generaBoton('Call', Icons.call),
        _generaBoton('Route', Icons.near_me),
        _generaBoton('Share', Icons.share)
      ],
    );
  }

  Widget _generaBoton(String titulo, IconData icon) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blue,
          size: 30.0,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          titulo,
          style: TextStyle(fontSize: 15.0, color: Colors.blue),
        )
      ],
    );
  }

  Widget _generaDescripcion() {
    final descripcion =
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
        'half-hour walk through pastures and pine forest, leads you to the '
        'lake, which warms to 20 degrees Celsius in the summer. Activities '
        'enjoyed here include rowing, and riding the summer toboggan run.';

    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: Text(
          descripcion,
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
