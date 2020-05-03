import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubtitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          _crearImagen(),
          _crearTitulo(),
          _crearAcciones(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto()
        ],
      )
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://images.pexels.com/photos/132037/pexels-photo-132037.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
    );
  }

  Widget _crearTitulo() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      child: Row(

        children: <Widget>[
          Expanded(

            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Lago con un embarcadero',
                  style: estiloTitulo,
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  'Un lago que en EEUU',
                  style: estiloSubtitulo,
                )
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red,
            size: 30.0,
          ),
          Text(
            '41',
            style: TextStyle(fontSize: 20.0),
          ),
        ],
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[

        _accion( Icons.call, 'CALL'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, 'SHARE')

      ],
    );
  }

  Widget _accion(IconData icon, String texto ) {

    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.blue,size: 40.0,),
        SizedBox(height: 5.0,),
        Text(texto, style: TextStyle(fontSize: 15.0, color: Colors.blue),)
      ],
    );

  }


  Widget _crearTexto() {

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
      child: Text(
        'Id voluptate enim pariatur cillum pariatur ut consequat proident in proident aliqua Lorem laborum. Excepteur reprehenderit nostrud ad aliquip consectetur anim quis occaecat tempor voluptate veniam. Elit aliquip aliquip sint culpa ipsum enim consequat voluptate reprehenderit et voluptate in tempor labore. Adipisicing nostrud aliqua laboris reprehenderit reprehenderit proident. Duis deserunt tempor Lorem nostrud officia ad proident consectetur pariatur ullamco non.',
        textAlign: TextAlign.justify,
      ),
    );
  }
}
