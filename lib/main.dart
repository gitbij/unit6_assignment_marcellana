import 'package:unit6_assignment_marcellana/screens/about_me.dart';
import 'package:unit6_assignment_marcellana/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // Create the routes here

      initialRoute: 'HomeScreen',
      routes: {
        'AboutMe' : (BuildContext ctc) => About_Me(),
        'HomeScreen' : (BuildContext ctc) => HomScreen(),
      }
    );
  }
}
