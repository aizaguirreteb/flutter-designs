import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp(),

          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulos(),
                _botonesRedondos(),
              ],
            ),
          )

        ],
      ),

      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _fondoApp() {

    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ]
        )
      ),
    );

    final cajaRosa = Transform.rotate(
      angle: -pi / 5.0,
      child:  Container(
        height: 320.0,
        width: 320.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80.0),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0),
            ]
          )
        ),
      ),
    );
    
   

    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
          child: cajaRosa,
          top: -100.0,
        )
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
            Text('Classify transaction', style: TextStyle(color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.bold)),
            SizedBox(height: 10.0,),
            Text('Classify these transaction into a particular category', style: TextStyle(color: Colors.white, fontSize: 15.0))
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
          caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0))
        )
      ),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today, size: 30.0,),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bubble_chart, size: 30.0,),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle, size: 30.0,),
            title: Container()
          )

        ],
      ),
    );
  }

  Widget _botonesRedondos() {

    return Table(
      children: <TableRow>[
        TableRow(
          children: [
            _crearBotonRedondo(Colors.blue, Icons.border_all, 'General'),
            _crearBotonRedondo(Colors.purpleAccent, Icons.directions_bus, 'Bus'),
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondo(Colors.pinkAccent, Icons.shop, 'Buy'),
            _crearBotonRedondo(Colors.orange, Icons.insert_drive_file, 'File'),
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondo(Colors.blueAccent, Icons.movie_filter, 'Entertainment'),
            _crearBotonRedondo(Colors.green, Icons.cloud, 'Cloud'),
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondo(Colors.red, Icons.collections, 'Photos'),
            _crearBotonRedondo(Colors.teal, Icons.help_outline, 'Help'),
          ]
        ),
      ],
    );

  }

  Widget _crearBotonRedondo(Color color, IconData icono, String texto){

    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          height: 150.0,
          margin: EdgeInsets.all(9.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107, 0.7),
            borderRadius: BorderRadiusDirectional.circular(20.0)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CircleAvatar(
                radius: 30.0,
                backgroundColor: color,
                child: Icon( icono, color: Colors.white, size: 25.0, ),
              ),
              Text(texto, style: TextStyle( color: color),)
            ],
          ),
        ),
      ),
    );

  }



}