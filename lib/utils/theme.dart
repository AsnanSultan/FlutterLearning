import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.red,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          textTheme: Theme.of(context).textTheme,
        ),
      );
}
