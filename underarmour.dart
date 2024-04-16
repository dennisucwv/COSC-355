// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sort_child_properties_last, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'popup_menu.dart';
import 'package:url_launcher/url_launcher.dart';

class UnderArmourList extends StatelessWidget {
  final List<ShoeTile> shoes = [
    ShoeTile(
      title: 'Under Armour Infinite Elite',
      imageUrl: 'https://img.runningwarehouse.com/watermark/rs.php?path=UA1IEM0-1.jpg&nw=731',
      price1:'Under Armour \$160',
      price2:'Foot Locker \$160',
      price3:'Running Warehouse \$159.95',
      description: 'The Under Armour Infinite Elite is a versatile running shoe featuring HOVR+ foam for a lightweight and responsive ride. It includes a beveled heel crash pad for smooth landings and protection. The Thinweb rubber outsole provides grip and durability, while the Intelliknit upper offers comfortable containment. Ideal for daily training and speed work, the Infinite Elite delivers a smooth and enjoyable running experience.',
      website1:'https://www.underarmour.com/en-us/p/running/mens_ua_infinite_elite_running_shoes/3027189.html?dwvar_3027189_color=002&dwvar_3027189_size=10.5&country=US&currency=USD&&cid=PLA_QT_US_82_beaOHs73sQ9&gad_source=4&gclid=Cj0KCQjw5cOwBhCiARIsAJ5njubWS3JEqMxpHPvrX3_-ijqQkkANbVdRzB34EhtdaBWeeOdD_pWM3I0aAhwWEALw_wcB&gclsrc=aw.ds',
      website2:'https://www.footlocker.com/product/~/27189101.html?source=shoppingads&locale=en-US&SID=6936&inceptor=1&cm_mmc=paid%20search-_-google-_-g-_-PLA-_-DPA-_--_-P-_-Prospecting-_--_-na-_--_-na-_-PLA-_-na-_--_--_-',
      website3:'https://www.runningwarehouse.com/Under_Armour_Infinite_Elite/descpage-UA1IEM0.html',
    ),
    ShoeTile(
      title: 'Under Armour Velociti Elite 2',
      imageUrl: 'https://img.runningwarehouse.com/watermark/rs.php?path=UA2VEU0-1.jpg&nw=731',
      price1:'Under Armour \$250',
      price2:'CharmCityRun \$250',
      price3:'Running Warehouse \$249.95',
      description: 'The Under Armour Velociti Elite 2 is a racing shoe designed for performance, featuring upgraded cushioning with a lower heel-toe offset for improved efficiency and turnover. It includes a full-length Thermoset Carbon plate for an explosive ride, ideal for achieving personal records. The shoe also offers durable traction with a Supercritical Flow foam outsole and a lightweight, anatomical fit with the Warp Upper. Perfect for podium finishes and marathon racing, the Velociti Elite 2 pushes the limits of racing performance.',
      website1:'https://www.underarmour.com/en-us/p/running/unisex_ua_velociti_elite_2_running_shoes/3027205.html?dwvar_3027205_color=002&dwvar_3027205_size=10.5%2F12&country=US&currency=USD&&cid=PLA_QT_US_82_beaOHs73sQ9&gad_source=4&gclid=Cj0KCQjw5cOwBhCiARIsAJ5njuYhrsQAN3vrC-HwKKpwZXUG2GybFFn6z7BRcL6L18StE-WpjzAgcogaAoEIEALw_wcB&gclsrc=aw.ds',
      website2:'https://shop.charmcityrun.com/product/2763440/under-armour/u-velociti-elite-2',
      website3:'https://www.runningwarehouse.com/Under_Armour_Velociti_Elite_2/descpage-UA2VEU0.html',
    ),
    ShoeTile(
      title: 'Under Armour HOVR Smokerider Spikes',
      imageUrl: 'https://img.runningwarehouse.com/watermark/rs.php?path=USRUS-1.jpg&nw=731',
      price1:'Under Armour \$100',
      price2:'DICKS \$100',
      price3:'Running Warehouse \$89.95',
      description: 'The Under Armour HOVR Smokerider is a premium middle-distance spike designed for elite athletes seeking optimal performance. It features a lightweight and breathable embroidered upper, a 6-pin layout for traction, and a 3/4 length plate that enhances efficiency. The full-length HOVR midsole provides extra underfoot protection, making it ideal for setting new personal records on the track.',
      website1:'https://www.underarmour.com/en-us/p/track_and_field/unisex_ua_hovr_smokerider_track_spikes/3021831.html?dwvar_3021831_color=004&dwvar_3021831_size=9&country=US&currency=USD&srsltid=AfmBOopodMB4DTFFfC1YdGCw67jcFHFXPMT12-Bi2MYhGuDFA6tg413AZ1A',
      website2:'https://www.dickssportinggoods.com/p/under-armour-hovr-smokerider-track-and-field-shoes-20uaruhvrsmkrdrblclt/20uaruhvrsmkrdrblclt?sku=20690302&srsltid=AfmBOooj4rUJfeWJemCGSByCS5AMTJFute96bNf_Gtl_jRF28cY8eue8-KA',
      website3:'https://www.runningwarehouse.com/Under_Armour_HOVR_Smokerider_Spikes/descpage-USRUS.html',
    ),

    // Add more ShoeTile objects for other types of shoes
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Under Amour',
          style: TextStyle(color: Colors.white),
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

class ShoeTile extends StatefulWidget {
  final String title;
  final String imageUrl;
  final String price1;
  final String price2;
  final String price3;
  final String description;
  final String website1;
  final String website2;
  final String website3;

  const ShoeTile({
    required this.title,
    required this.imageUrl,
    required this.price1,
    required this.price2,
    required this.price3,
    required this.description,
    required this.website1,
    required this.website2,
    required this.website3,
  });

  @override
  _ShoeTileState createState() => _ShoeTileState();
}

class _ShoeTileState extends State<ShoeTile> {
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
                        widget.price1,
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      Text(
                        widget.price2,
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      Text(
                        widget.price3,
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
                            _launchURL(widget.website1);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: const Color.fromARGB(255, 93, 13, 146),
                            onPrimary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              side: BorderSide(color: Colors.black), // Add border
                            ),
                          ),
                          child: Text('Under Armour'),
                        ),
                        SizedBox(height: 8), // Adjusted spacing between buttons
                        ElevatedButton(
                          onPressed: () {
                            _launchURL(widget.website2);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 93, 13, 146), // Change button color
                            onPrimary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              side: BorderSide(color: Colors.black), // Add border
                            ),
                          ),
                          child: Text('Other Company'),
                        ),
                        SizedBox(height: 8), // Adjusted spacing between buttons
                        ElevatedButton(
                          onPressed: () {
                            _launchURL(widget.website3);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 93, 13, 146), // Change button color
                            onPrimary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              side: BorderSide(color: Colors.black), // Add border
                            ),
                          ),
                          child: Text('Running Warehouse'),
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