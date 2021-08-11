import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);
  final imageUrl =
      "https://scontent.flhe12-1.fna.fbcdn.net/v/t1.6435-9/s552x414/117234216_2754311421556414_8696376666302756188_n.jpg?_nc_cat=107&ccb=1-4&_nc_sid=da31f3&_nc_eui2=AeF-NeU8bbydCkU83uTbRmh8mLmYz_xSw7WYuZjP_FLDtcfxFKVEqRj7lTSeaFPu7xjGuCS47yYBIL_IuHsro7Ix&_nc_ohc=QOcbWKvQZuAAX-CXpGf&_nc_ht=scontent.flhe12-1.fna&oh=554c8aa6c72fb3de1fc0fcca869d83fe&oe=61374FFD";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: Text("Asnan Sultan"),
              accountEmail: Text("asnan.sultan676@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
              ),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.home),
            title: Text("Home"),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.profile_circled),
            title: Text("Profile"),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.mail),
            title: Text("Email"),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.settings),
            title: Text("Settings"),
          ),
        ],
      ),
    );
  }
}
