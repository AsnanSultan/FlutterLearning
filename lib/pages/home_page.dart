import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Application"),
      ),
      body: Center(
        child: Container(
          child: Text("Wellcom to flutter"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
