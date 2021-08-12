import 'package:flutter/material.dart';
import 'package:flutter_application_with_git/models/catalog.dart';

import 'drawer.dart';
import 'items_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dumyList = List.generate(50, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Application"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            itemCount: dumyList.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item: dumyList[index],
              );
            }),
      ),
      drawer: MyDrawer(),
    );
  }
}
