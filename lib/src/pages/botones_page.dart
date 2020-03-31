import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dart:math';

class BotonesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNavigationBar(context),
      body: Stack(
        children: <Widget>[
          _fondoApp(context),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulos(),
                _botonesRedondeados(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _fondoApp(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    final gradiente = Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(0.0, 0.6),
              end: FractionalOffset(0.0, 1.0),
              colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ])),
    );

    final cajaRosa = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: height * 0.4,
        width: height * 0.4,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0)
            ]),
            borderRadius: BorderRadius.circular(80.0)),
      ),
    );

    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(top: -100.00, child: cajaRosa),
      ],
    );
  }

  Widget _titulos() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Classify transaction',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Classify this transaction into a particular catagory',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
          primaryColor: Colors.pinkAccent,
          textTheme: Theme.of(context).textTheme.copyWith(
              caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)))),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today, size: 30.0), title: Container()),
          BottomNavigationBarItem(
              icon: Icon(Icons.bubble_chart, size: 30.0), title: Container()),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle, size: 30.0),
              title: Container())
        ],
      ),
    );
  }

  Widget _botonesRedondeados() {
    return Table(
      children: [
        TableRow(children: [
          _crearBotonRedondeado(Colors.blue, Icons.gradient, 'General'),
          _crearBotonRedondeado(Colors.pinkAccent, Icons.shop, 'General')
        ]),
        TableRow(children: [
          _crearBotonRedondeado(Colors.red, Icons.shuffle, 'General'),
          _crearBotonRedondeado(Colors.orangeAccent, Icons.signal_wifi_off, 'General')
        ]),
        TableRow(children: [
          _crearBotonRedondeado(Colors.tealAccent, Icons.smartphone, 'General'),
          _crearBotonRedondeado(Colors.redAccent, Icons.slideshow, 'General')
        ]),
        TableRow(children: [
          _crearBotonRedondeado(Colors.yellowAccent, Icons.sms_failed, 'General'),
          _crearBotonRedondeado(Colors.amberAccent, Icons.close, 'General')
        ]),
        TableRow(children: [
          _crearBotonRedondeado(Colors.indigoAccent, Icons.cloud_done, 'General'),
          _crearBotonRedondeado(Colors.lightGreen, Icons.code, 'General')
        ]),
        TableRow(children: [
          _crearBotonRedondeado(Colors.cyanAccent, Icons.phone, 'General'),
          _crearBotonRedondeado(Colors.brown, Icons.photo_album, 'General')
        ]),
        TableRow(children: [
          _crearBotonRedondeado(Colors.lime, Icons.crop_free, 'General'),
          _crearBotonRedondeado(Colors.orange, Icons.credit_card, 'General')
        ]),
      ],
    );
  }

  Widget _crearBotonRedondeado(Color color, IconData icono, String texto) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          height: 180.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20.0)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(
                height: 5.0,
              ),
              CircleAvatar(
                radius: 35.0,
                backgroundColor: color,
                child: Icon(
                  icono,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
              Text(
                texto,
                style: TextStyle(color: color),
              ),
              SizedBox(
                height: 5.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
