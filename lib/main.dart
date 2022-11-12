import 'package:flutter/material.dart';
import 'package:squirrelsbox/screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Squirrels Box',
      initialRoute: 'home',
      routes: {
        'home': (_) => HomeScreen(),
      },
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
    );
  }
}
