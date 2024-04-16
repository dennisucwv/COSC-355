// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, sort_child_properties_last, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'popup_menu.dart';
import 'package:url_launcher/url_launcher.dart';

class SauconyList extends StatelessWidget {
  final List<ShoeTile> shoes = [
    ShoeTile(
      title: 'Saucony Endorphin Shift 3',
      imageUrl: 'https://img.runningwarehouse.com/watermark/rs.php?path=SEH3M05-1.jpg&nw=731',
      price1:'Saucony \$88.95',
      price2:'Heartbreak \$150',
      price3:'Running Warehouse \$79.88',
      description: 'The Saucony Endorphin Shift 3 is a redesigned max-cushioning shoe that combines efficiency with comfort. It features a highly stacked PWRRUN foam midsole with a lighter compound for excellent vibration dampening. The SpeedRoll geometry promotes forward roll and energy conservation, enhancing propulsion. A large flex groove, beveled heel, and durable rubber outsole contribute to a smooth ride and natural movement. The shoes durable yet lightweight mesh upper with a reinforced TPU heel cup provides support and comfort. Overall, the Endorphin Shift 3 is an outstanding daily trainer equipped with technology to meet all your training needs.',
      website1:'https://www.saucony.com/CA/en_CA/endorphin-shift-3/52960M.html',
      website2:'https://heartbreak.run/products/saucony-mens-endorphin-shift-3-shoe?variant=42602383638688&currency=USD&utm_medium=product_sync&utm_source=google&utm_content=sag_organic&utm_campaign=sag_organic&srsltid=AfmBOoq_AOBUu1uOhQs-UjQZfelk3h8OwdOvKzHOU7SQ97ylM5c3buiUrt8&com_cvv=d30042528f072ba8a22b19c81250437cd47a2f30330f0ed03551c4efdaf3409e',
      website3:'https://www.runningwarehouse.com/Saucony_Endorphin_Shift_3/descpage-SEH3M05.html',
    ),
    ShoeTile(
      title: 'Saucony Terminal VT Spikes',
      imageUrl: 'https://img.runningwarehouse.com/watermark/rs.php?path=SATVTM2-1.jpg&nw=731',
      price1:'Saucony \$129.95',
      price2:'DICKS \$149.99',
      price3:'Running Warehouse \$89.88',
      description: 'The Saucony Terminal VT is an elite-level distance spike designed for speed and performance on the track. Weighing under 4 ounces, it feels virtually weightless while delivering a powerful kick with the responsive PWRRUN HG foam midsole. The Pebax spike plate ensures secure traction for fast sprints and turns. The lightweight mesh upper offers a stripped-down yet secure fit, with webbing that adapts to foot movement for lasting comfort and security. In summary, the Saucony Terminal VT is a lightning-fast option for distance runners aiming to enhance their performance significantly.',
      website1:'https://www.saucony.com/en/terminal-vt/195019461758.html?gad_source=4&gclid=Cj0KCQjw5cOwBhCiARIsAJ5njubbo8ORioBWG9INxLl_1kOy3TIMtVx0xLg19U4_SwAJTUFbSZxd8d8aAgzoEALw_wcB&gclsrc=aw.ds',
      website2:'https://www.dickssportinggoods.com/p/saucony-mens-terminal-vt-track-and-field-shoes-23saumtrmnlvtblckclt/23saumtrmnlvtblckclt?sku=24853976&camp=CSE:DSG_92700079137499893_pla_aud-359064049599:pla-1834077479170_58700008645406050_71700000116956489&segment=&gad_source=4&gclid=Cj0KCQjw5cOwBhCiARIsAJ5njubFijnq4pgBirlWNjoTOqVTwEjTWp-BaDoU-7tqvvgUQRewRMgCclQaAnw2EALw_wcB&gclsrc=aw.ds',
      website3:'https://www.runningwarehouse.com/Saucony_Terminal_VT_Spikes/descpage-SATVTM2.html',
    ),
    ShoeTile(
      title: 'Saucony Endorphin Pro 4',
      imageUrl: 'https://img.runningwarehouse.com/watermark/rs.php?path=S4EPM03-1.jpg&nw=731',
      price1:'Saucony \$225',
      price2:'Heartbreak \$225',
      price3:'Running Warehouse \$224.95',
      description: 'The Saucony Endorphin Pro 4 continues the series legacy of excellence in marathon racing with key upgrades for enhanced performance. It features PWRRUN HG cushioning in the top layer of the midsole, providing responsive and lightweight energy return similar to the Endorphin Elite. A carbon plate embedded within the midsole works with SPEEDROLL geometry for smooth transitions and efficiency. The outsoles strategic rubber placements ensure traction without adding weight, and the minimal upper offers a secure fit with improved comfort and lockdown. Overall, the Endorphin Pro 4 represents Sauconys commitment to innovation and excellence in marathon racing footwear.',
      website1:'https://www.saucony.com/en/endorphin-pro-4/195019912618.html?gad_source=4&gclid=Cj0KCQjw5cOwBhCiARIsAJ5njuakbvQ8akauZhQkG6YyErggGJZM0FamazCmA0x6k7YKMUTEQEa5WrsaAmJ3EALw_wcB&gclsrc=aw.ds',
      website2:'https://heartbreak.run/products/saucony-endorphin-pro-4-men-s-shoes?variant=48860182642848&currency=USD&utm_medium=product_sync&utm_source=google&utm_content=sag_organic&utm_campaign=sag_organic&utm_source=google&utm_medium=cpc&utm_campaign=&gad_source=4&gclid=Cj0KCQjw5cOwBhCiARIsAJ5njuY-FeWhDwaxb5VF69ggQVzXYJHCcm9wFVmzaiVsyEpJeSqb8PTnqXgaAupOEALw_wcB',
      website3:'https://www.runningwarehouse.com/Saucony_Endorphin_Pro_4/descpage-S4EPM03.html',
    ),

    // Add more ShoeTile objects for other types of shoes
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Saucony',
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
                          child: Text('Saucony'),
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