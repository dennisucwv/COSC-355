// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sort_child_properties_last, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'popup_menu.dart';
import 'package:url_launcher/url_launcher.dart';

class AsicsList extends StatelessWidget {
  final List<ShoeTile> shoes = [
    ShoeTile(
      title: 'ASICS Novablast 4',
      imageUrl: 'https://img.runningwarehouse.com/watermark/rs.php?path=AM4NB09-1.jpg&nw=731',
      price1:'Asics \$140',
      price2:'Heartbreak \$140',
      price3:'Running Warehouse \$139.95',
      description: 'The ASICS Novablast 4 is back with upgrades to solidify its position as a top all-around running shoe. The new FF Blast+ Eco midsole provides a smooth and bouncy ride in a sustainable package, perfect for daily runs and speed workouts. The outsole features strategically placed AHAR for traction and durability, with a forefoot design that enhances propulsion. The engineered woven upper offers advanced stretch, ventilation, and durability. Overall, the Novablast 4 is a high-performing shoe suitable for every run.',
      website1:'https://www.asics.com/us/en-us/novablast-4/p/ANA_1011B693-300.html?size=12&width=Standard&utm_source=google&utm_medium=pla&CAWELAID=120223060001130381&gad_source=4&gclid=Cj0KCQjw5cOwBhCiARIsAJ5njuas_Mp4_G3mxXBMeut58L5vn_Zxmb4bKF4SWsCCZQwCHB18MfiRZOEaAknjEALw_wcB',
      website2:'https://heartbreak.run/products/asics-novablast-4-mens-shoe?variant=47963725758624&currency=USD&utm_medium=product_sync&utm_source=google&utm_content=sag_organic&utm_campaign=sag_organic&utm_source=google&utm_medium=cpc&utm_campaign=&gad_source=4&gclid=Cj0KCQjw5cOwBhCiARIsAJ5njuZByEL5NtcDVZ-HlxYcCR-HsZsSPHyHHUyivi_0lYC8brjLFaN36aYaAnTyEALw_wcB',
      website3:'https://www.runningwarehouse.com/ASICS_Novablast_4/descpage-AM4NB09.html',
    ),
    ShoeTile(
      title: 'ASICS METASPEED Edge Paris',
      imageUrl: 'https://img.runningwarehouse.com/watermark/rs.php?path=AMSE2UP-1.jpg&nw=731',
      price1:'Asics \$250',
      price2:'Heartbreak \$250',
      price3:'Running Warehouse \$249.95',
      description: 'The ASICS METASPEED Edge Paris is a high-performance racing shoe designed for cadence runners aiming to achieve personal bests in half and full marathons. It features FF TURBO PLUS foam in the midsole for ultra-responsive and cushioned ride, promoting faster leg turnover. The carbon fiber plate is strategically angled to enhance propulsion and stride cadence, making running fast feel effortless. The ASICSGRIP rubber outsole provides traction in various road conditions, and the MOTION WRAP 2.0 upper offers a race-ready fit with breathability and secure foot lockdown. Overall, the METASPEED Edge Paris is an excellent choice for maximizing performance in long-distance races.',
      website1:'https://heartbreak.run/products/asics-metaspeed-sky-paris?variant=48955174551712&currency=USD&utm_medium=product_sync&utm_source=google&utm_content=sag_organic&utm_campaign=sag_organic&utm_source=google&utm_medium=cpc&utm_campaign=&gad_source=4&gclid=Cj0KCQjw5cOwBhCiARIsAJ5njuZZeV1IqQJLlkNB4IusB21O-kv6ldYCphgEhxSwfDROiu-d29valhwaAs6PEALw_wcB',
      website2:'https://heartbreak.run/products/asics-metaspeed-sky-paris?variant=48955174551712&currency=USD&utm_medium=product_sync&utm_source=google&utm_content=sag_organic&utm_campaign=sag_organic&utm_source=google&utm_medium=cpc&utm_campaign=&gad_source=4&gclid=Cj0KCQjw5cOwBhCiARIsAJ5njuZZeV1IqQJLlkNB4IusB21O-kv6ldYCphgEhxSwfDROiu-d29valhwaAs6PEALw_wcB',
      website3:'https://www.runningwarehouse.com/ASICS_METASPEED_Edge_Paris/descpage-AMSE2UP.html',
    ),
    ShoeTile(
      title: 'ASICS Gun Lap 2 Spikes',
      imageUrl: 'https://img.runningwarehouse.com/watermark/rs.php?path=ASGL2U3-1.jpg&nw=731',
      price1:'Kicks Crew \$178',
      price2:'Amazon \$69.94',
      price3:'Running Warehouse \$99.95',
      description: 'The ASICS Gun Lap 2 is a high-performance track spike designed for sprinting and distance events. It features a shark skin textured outsole in the heel and a decoupled nylon spike plate on the forefoot, providing exceptional traction and grip. The lightweight FLYTEFOAM midsole offers responsive cushioning, and the breathable mesh upper optimizes airflow and water drainage, particularly beneficial for steeplechase events. Get ready to kick into your final gear with the ASICS Gun Lap 2 for optimal performance on the track.',
      website1:'https://www.kickscrew.com/products/asics-gun-lap-2-1093a131-701?variant=41643192123587&currency=USD&srsltid=AfmBOooNjyZlmI0VN8w1jFF8_PsWF33DOlAoiWLSXb14KZz8QnZeTE9oU48',
      website2:'https://www.amazon.com/ASICS-Unisex-Track-Field-Shoes/dp/B0BQND4WC9/ref=asc_df_B0BQND4WC9/?tag=hyprod-20&linkCode=df0&hvadid=652393380627&hvpos=&hvnetw=g&hvrand=10788661251259083167&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9009137&hvtargid=pla-2013515556165&psc=1&mcid=d521bccc239037858228dad8af6d20f0',
      website3:'https://www.runningwarehouse.com/ASICS_Gun_Lap_2_Spikes/descpage-ASGL2U3.html',
    ),

    // Add more ShoeTile objects for other types of shoes
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Asics',
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
                          child: Text('Asics'),
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