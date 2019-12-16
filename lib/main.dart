import 'package:flutter/material.dart';
import 'InstaHome.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: 'Normiegram',
        debugShowCheckedModeBanner: false,
        home: InstaHome(),
        theme: ThemeData(
          primaryColor: Colors.black,
          primaryIconTheme: IconThemeData(color: Colors.black),
          primaryTextTheme: TextTheme(title: TextStyle(color: Colors.black)),
          textTheme: TextTheme(title: TextStyle(color: Colors.black) )





        )
        );

    
    
    
    }
  }







