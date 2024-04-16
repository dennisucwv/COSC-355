// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter1/sidecode.dart';
import 'package:url_launcher/url_launcher.dart';
import 'popup_menu.dart';
class CrocsScreen extends StatelessWidget {
  final List<CrocsTile> shoes = [
    CrocsTile(
      title: 'Crocs',
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxZm1BrsjTIqd5UPmluQOuA0m9Usm0sIBLAQ&usqp=CAU',
      price: '\$49.99',
      description: 'Certifiably Comfortable™ Bistro Clogs are specifically designed for food service, hospitality, and healthcare workers. These clogs feature Crocs Lock™ slip-resistant tread for safety, a fully molded design that is easy to clean, and an enclosed toe design with a thicker metatarsal area to protect feet from spills. The contoured footbeds enhance comfort, and they embody the iconic Crocs Comfort™ with their lightweight, flexible, and 360-degree comfort. These Bistro Work Clogs are ASTM F2913-11 tested, CE Certified, and meet or exceed EN ISO 20347:2012 standards, making them ideal for those who need reliable and comfortable footwear during long shifts.',
      website: 'https://www.crocs.com/p/bistro-work-clog/10075.html?cgid=footwear&cid=410',
    ),
    CrocsTile(
      title: 'Sport Mode Crocs',
      imageUrl: 'data:image/jpeg;base64,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',
      price: '\$49.99',
      description: 'Introducing the ultimate sport mode footwear: Certifiably Comfortable™ Bistro Clogs! 🏃‍♂️💨 Unleash your inner sprinter with the Crocs Lock™ slip-resistant tread - because nothing says speed like slip-resistant clogs. Fully molded for that aerodynamic look and easy soap and water cleanup, because who needs running shoes when you can have Bistro Clogs? 🚿 Toe protection for those intense marathon spills and a metatarsal area that rivals any track shoe. Get ready to break all records with the iconic Crocs Comfort™ - the pinnacle of lightweight, flexible, and 360-degree comfort. 🏆 ASTM F2913-11 tested, CE Certified, and certified by your favorite sarcastic shoe expert. Step into sport mode like never before! 💪 #BistroClogs #SportMode #NotYourAverageRunningShoes',
      website: 'https://www.crocs.com/p/classic-clog/10001.html?cgid=clogs&cid=6UR',
    ),
    // Add more ShoeTile objects for other types of shoes
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Crocs',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(width: 8), // Add spacing between 'Crocs' and the secret button
            GestureDetector(
              onTap: () {
                // Navigate to another screen or perform any action here
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MEME()),
                );
              },
              child: Icon(
                Icons.lock_outline, // You can use any icon here
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ],
        ),
        centerTitle: true,
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: ListView.builder(
        itemCount: shoes.length,
        itemBuilder: (context, index) {
          return shoes[index];
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Show your desired menu or perform an action here
          PopupMenu.show(context);
        },
        child: Icon(Icons.menu, color: Colors.white),
        backgroundColor: Color.fromARGB(255, 93, 13, 146),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side: BorderSide(
            color: const Color.fromARGB(255, 0, 0, 0),
            width: 2.0,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}

class CrocsTile extends StatefulWidget {
  final String title;
  final String imageUrl;
  final String price;
  final String description;
  final String website;

  const CrocsTile({
    required this.title,
    required this.imageUrl,
    required this.price,
    required this.description,
    required this.website,
  });

  @override
  _ShoeTileState createState() => _ShoeTileState();
}

class _ShoeTileState extends State<CrocsTile> {
  bool isExpanded = false;

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.network(
                  widget.imageUrl,
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        widget.price,
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            if (isExpanded)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8),
                  Text(
                    widget.description,
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  SizedBox(height: 16), // Adjusted spacing between description and buttons
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            _launchURL(widget.website);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: const Color.fromARGB(255, 93, 13, 146),
                            onPrimary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              side: BorderSide(color: Colors.black), // Add border
                            ),
                          ),
                          child: Text('Crocs'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}