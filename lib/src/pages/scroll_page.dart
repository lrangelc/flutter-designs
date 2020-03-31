import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[_pagina1(context), _pagina2()],
      ),
    );
  }

  Widget _pagina1(BuildContext context) {
    return Stack(
      children: <Widget>[_colorFondo(), _imagenFondo(), _textos(context)],
    );
  }

  Widget _textos(BuildContext context) {
    final estiloTexto = TextStyle(color: Colors.white, fontSize: 50.0);

    double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: height * 0.08,
          ),
          Text(
            '11°',
            style: estiloTexto,
          ),
          Text(
            'Miercoles',
            style: estiloTexto,
          ),
          Expanded(
            child: Container(),
          ),
          Icon(
            Icons.keyboard_arrow_down,
            size: 70.0,
            color: Colors.white,
          )
        ],
      ),
    );
  }

  Widget _colorFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
      child: Image(
        image: AssetImage('assets/scroll-1.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _imagenFondo() {
    return Container();
  }

  Widget _pagina2() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
      child: Center(
        child: RaisedButton(
          shape: StadiumBorder(),
          color: Colors.blue,
          textColor: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
            child: Text(
              'Bienvenido',
              style: TextStyle(fontSize: 25.0),
            ),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
