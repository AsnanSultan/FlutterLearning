import 'package:flutter/material.dart';
import 'package:flutter_application_with_git/pages/home_page.dart';
import 'package:flutter_application_with_git/pages/login_page.dart';
import 'package:flutter_application_with_git/utils/routes.dart';
import 'package:flutter_application_with_git/utils/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //  home: HomePage(),
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),

      routes: {
        "/": (context) => HomePage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
