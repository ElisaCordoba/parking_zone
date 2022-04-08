import 'package:flutter/material.dart';
import 'package:parking_zone/src/pages/home_pages.dart';
import 'package:parking_zone/src/pages/sing_in.dart';
import 'package:parking_zone/src/pages/sing_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Parking Zone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      initialRoute: 'home',
      routes: <String, WidgetBuilder>{
        'home':(BuildContext context) => HomePage(),
        'sing in':(BuildContext context)=> SingIn(),
        'sing up':(BuildContext context)=> SingUp()
      },
      );
  }   
}

