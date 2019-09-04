import 'package:flutter/material.dart';
import 'package:flutter_meals_app/widgets/categories_screen.dart';

import './widgets/categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Meals App',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        accentColor: Colors.amber,
        fontFamily: 'Rubik',
        textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(
                color: Color.fromRGBO(25, 52, 52, 1),
              ),
              title: TextStyle(
                fontSize:17,
                fontFamily: 'Rubik',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      home: CategoriesScreen(),
    );
  }
}
