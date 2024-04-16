// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'main.dart';
import 'full_list.dart';
import 'brands.dart';
import 'crocks.dart';
import 'types_of_shoes.dart';

class PopupMenu {
  static void show(BuildContext context) async {
    final RenderBox overlay = Overlay.of(context).context.findRenderObject() as RenderBox;
    final RelativeRect position = RelativeRect.fromLTRB(0, overlay.size.height, 0, 0);

    await showMenu(
      context: context,
      position: position,
      color: Color.fromARGB(255, 107, 16, 168),
      items: [
        PopupMenuItem(
          child: ListTile(
            leading: Icon(Icons.home, color: Colors.white),
            title: Text('Home',style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
          ),
        ),
        PopupMenuItem(
          child: ListTile(
            leading: Icon(Icons.list_alt,color: Colors.white),
            title: Text('Full List',style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FullListScreen()),
              );
            },
          ),
        ),
        PopupMenuItem(
          child: ListTile(
            leading: Icon(Icons.shopping_bag,color: Colors.white),
            title: Text('Brands',style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BrandsScreen()),
              );
            },
          ),
        ),
        PopupMenuItem(
          child: ListTile(
            leading: Icon(Icons.outlined_flag,color: Colors.white),
            title: Text('Crocs',style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CrocsScreen()),
              );
            },
          ),
        ),
        PopupMenuItem(
          child: ListTile(
            leading: Icon(Icons.star,color: Colors.white),
            title: Text('Types of Shoes',style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TypesOfShoesScreen()),
              );
            },
          ),
        ),
      ],
      elevation: 8.0,
    );
  }
}
