// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter1/popup_menu.dart';


// ignore: must_be_immutable
class MEME extends StatelessWidget {
  final double boxWidth = 200.0;
  final double boxHeight = 200.0;

  String welcomeText = 'Welcome to OnlyShoes!';
  String dealsText = 'Step into Savings: Find the Best Deals on Shoes!';

  MEME({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        
        title: Text(
          'Got Ya',
          style: const TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        automaticallyImplyLeading: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          
          decoration: BoxDecoration(
            
            image: DecorationImage(
              image: const NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZiYsSgtMNIF8scvOVUGneN2-PerwaxgDhFg&s',
              ),
              fit: BoxFit.cover, 
            ),
          ),
          
        ),
      ),
      floatingActionButton: FloatingActionButton(
      onPressed: () {
        PopupMenu.show(context);
      },
      child: const Icon(Icons.menu, color: Colors.white),
      backgroundColor: const Color.fromARGB(255, 93, 13, 146),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
        side: const BorderSide(
          color: Color.fromARGB(255, 0, 0, 0), // Set border color to white
          width: 2.0,
        ),
      ),
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
  );
 }
}