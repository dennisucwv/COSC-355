// ignore_for_file: prefer_const_constructors, sort_child_properties_last, use_key_in_widget_constructors

//purple: Color.fromARGB(255, 93, 13, 146)

import 'package:flutter/material.dart';
import 'popup_menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OnlyShoes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 82, 81, 81), // Set the background color here
        // You can customize other theme properties as needed
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final double boxWidth = 200.0;
  final double boxHeight = 200.0;

  String welcomeText = 'Welcome to OnlyShoes!';
  String dealsText = 'Step into Savings: Find the Best Deals on Shoes!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text(
          'OnlyShoes',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                'https://png.pngtree.com/thumb_back/fw800/background/20240107/pngtree-landscape-with-mountains-lake-and-forest-at-night-image_15576012.jpg',
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: boxWidth,
                height: boxHeight,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.7),
                  border: Border.all(color: const Color.fromARGB(255, 93, 13, 146), width: 2.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: boxWidth - 20.0,
                      child: Text(
                        welcomeText,
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                        textAlign: TextAlign.center, // Center text horizontally
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: boxWidth - 20.0,
                      child: Text(
                        dealsText,
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center, // Center text horizontally
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
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
}