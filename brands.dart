// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter1/ONlist.dart';
import 'package:flutter1/puma.dart';
import 'package:flutter1/adidas.dart';
import 'package:flutter1/asicslist.dart';
import 'package:flutter1/brookslist.dart';
import 'package:flutter1/hokalist.dart';
import 'package:flutter1/newbalance.dart';
import 'package:flutter1/sauconylist.dart';
import 'package:flutter1/underarmour.dart';
import 'package:flutter1/nikelist.dart';
import 'popup_menu.dart';


// Define each brand screen as a StatelessWidget
class Adidas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adidas'),
      ),
      body: Center(
        child: Text('This is Adidas screen'),
      ),
    );
  }
}

class Asics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Asics'),
      ),
      body: Center(
        child: Text('This is Asics screen'),
      ),
    );
  }
}

class HOKA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOKA'),
      ),
      body: Center(
        child: Text('This is HOKA screen'),
      ),
    );
  }
}

class Nike extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nike'),
      ),
      body: Center(
        child: Text('This is Nike screen'),
      ),
    );
  }
}

class ON extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ON'),
      ),
      body: Center(
        child: Text('This is ON screen'),
      ),
    );
  }
}

class NewBalance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Balance'),
      ),
      body: Center(
        child: Text('This is New Balance screen'),
      ),
    );
  }
}

class UnderArmour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Under Armour'),
      ),
      body: Center(
        child: Text('This is Under Armour screen'),
      ),
    );
  }
}

class Brooks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Brooks'),
      ),
      body: Center(
        child: Text('This is Brooks screen'),
      ),
    );
  }
}

class Puma extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Puma'),
      ),
      body: Center(
        child: Text('This is Puma screen'),
      ),
    );
  }
}

class Saucony extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Saucony'),
      ),
      body: Center(
        child: Text('This is Saucony screen'),
      ),
    );
  }
}

class BrandsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Brands',
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
          _buildBrandButton(context, 'Adidas', AdidasList()),
          _buildBrandButton(context, 'Asics', AsicsList()),
          _buildBrandButton(context, 'Brooks', Brooklist()),
          _buildBrandButton(context, 'HOKA', HOKAlist()),
          _buildBrandButton(context, 'New Balance', NewBalancelist()),
          _buildBrandButton(context, 'Nike', Nikelist()),
          _buildBrandButton(context, 'ON', ONlist()),
          _buildBrandButton(context, 'Puma', Pumalist()),
          _buildBrandButton(context, 'Saucony', SauconyList()),
          _buildBrandButton(context, 'Under Armour', UnderArmourList()),
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
