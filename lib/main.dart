import 'package:flutter/material.dart';
import 'package:flutter_design/src/pages/basico_page.dart';
import 'package:flutter_design/src/pages/scroll_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: 'scroll',
      routes: {
        'basico'  :  (BuildContext context ) => BasicoPage(),
        'scroll'  :  (BuildContext context ) => ScrollPage(),
      },
    );
  }
}