import 'package:flutter/material.dart';
import 'package:flutter_application_with_git/models/catalog.dart';
import 'package:flutter_application_with_git/pages/addToCart_widget.dart';
import 'package:flutter_application_with_git/utils/theme.dart';

import 'package:velocity_x/velocity_x.dart';

class HomeDeatils extends StatelessWidget {
  final Item catalog;

  const HomeDeatils({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyTheme.creamColor,
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            "\$${catalog.price}".text.bold.xl4.red800.make(),
            AddToCart(catalog: catalog).wh(120, 50)
          ],
        ).p32(),
      ),
      backgroundColor: MyTheme.creamColor,
      body: SafeArea(
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).h32(context),
            Expanded(
                child: VxArc(
              height: 32,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                color: Colors.white,
                width: context.screenHeight,
                child: Column(
                  children: [
                    catalog.name.text.xl4
                        .color(MyTheme.darkBlueishColor)
                        .bold
                        .make(),
                    catalog.desc.text.xl.make(),
                    10.heightBox,
                    "A product detail page (PDP) is a web page on an eCommerce site that presents the description of a specific product in view. The details displayed often include size, color, price, shipping information, reviews, and other relevant information customers may want to know before making a purchase."
                        .text
                        .size(16)
                        .make()
                        .p16(),
                  ],
                ).py64(),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
