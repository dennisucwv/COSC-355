// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter1/spikes.dart';
import 'package:flutter1/supershoe.dart';
import 'package:flutter1/trainerslist.dart';
import 'popup_menu.dart';

class Adidas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trainers'),
      ),
      body: Center(
        child: Text('Trainer Shoes'),
      ),
    );
  }
}

class Asics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Super Shoes'),
      ),
      body: Center(
        child: Text('CarbonPlated'),
      ),
    );
  }
}

class HOKA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spikes'),
      ),
      body: Center(
        child: Text('Spikes Shoes'),
      ),
    );
  }
}



class TypesOfShoesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Types of Shoes',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      // Use the GridView as the body of the Scaffold
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16.0),
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        children: [
          _buildBrandButton(context, 'Spikes', Spikeslist()),
          _buildBrandButton(context, 'SuperShoe', Supershoelist()),           
          _buildBrandButton(context, 'Trainers', Trainerslist()),
        ],
      ),
      floatingActionButton: FloatingActionButton(
  onPressed: () {
    PopupMenu.show(context);
  },
  child: Icon(Icons.menu, color: Colors.white),
  backgroundColor: Color.fromARGB(255, 93, 13, 146),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(8.0), // Optional: Set border radius
    side: BorderSide(
      color: const Color.fromARGB(255, 0, 0, 0), // Set border color to white
      width: 2.0, // Set border width
    ),
  ),
),
floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,

    );
  }

  // Helper method to build each brand button
  Widget _buildBrandButton(BuildContext context, String name, Widget screen) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => screen),
      );
    },
    child: DecoratedBox(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 93, 13, 146),
        borderRadius: BorderRadius.circular(8.0), // Optional: Set border radius
        border: Border.all(
          color: const Color.fromARGB(255, 0, 0, 0), // Set border color to white
          width: 2.0, // Set border width
        ),
      ),
      child: Center(
        child: Text(
          name,
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.white, // Set text color to white
          ),
        ),
      ),
    ),
  );
}
}
