// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sort_child_properties_last, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'popup_menu.dart';
import 'package:url_launcher/url_launcher.dart';

class HOKAlist extends StatelessWidget {
  final List<ShoeTile> shoes = [
    ShoeTile(
      title: 'HOKA Clifton 9',
      imageUrl: 'https://img.runningwarehouse.com/watermark/rs.php?path=HCL9M19-1.jpg&nw=731',
      price1:'HOKA \$111.99',
      price2:'Marathon Sport \$144.95',
      price3:'Running Warehouse \$144.95',
      description: 'The HOKA Clifton 9 is a neutral everyday running shoe focused on comfort and lightweight design. It features updated, more responsive CMEVA foam for a revitalized underfoot experience, with increased cushioning thanks to an additional 3mm in the stack height. The durable outsole provides control on the road, and a gusseted tongue ensures a secure fit while keeping debris out. HOKAs early-stage meta-rocker technology delivers a smooth ride at any pace. The Clifton 9 is a dependable daily trainer suitable for runners and walkers alike.',
      website1:'https://www.hoka.com/en/us/sale/clifton-8/1119393.html?dwvar_1119393_color=IBSB',
      website2:'https://www.marathonsports.com/products/hoka-mens-clifton-9?sku=7037154164797&size=9.5&cmp_id=19747877240&adg_id=&kwd=&device=c&gad_source=4&gclid=Cj0KCQjw5cOwBhCiARIsAJ5njubYZ0G7qKlduwtHToLlGf3e8L1NuzaAYSJzcMV0lUGxK-OUkGEn_t4aAkQKEALw_wcB&width=Medium+%28D%29',
      website3:'https://www.runningwarehouse.com/HOKA_Clifton_9/descpage-HCL9M19.html',
    ),
    ShoeTile(
      title: 'HOKA Mach X',
      imageUrl: 'https://img.runningwarehouse.com/watermark/rs.php?path=HOMAXM3-1.jpg&nw=731',
      price1:'HOKA \$180',
      price2:'Runners Plus \$180',
      price3:'Running Warehouse \$179.95',
      description: 'The HOKA Mach X is a supercharged version of the Mach series, offering exceptional speed and performance. It features a dual-layer midsole with responsive PEBA foam atop protective CMEVA foam, delivering over 40mm of cushioning in the heel for plushness and responsiveness. A propulsive Pebax plate between the foams enhances snappiness and efficient turnover. The Durabrasion rubber outsole provides durability without compromising on weight. The lightweight engineered jacquard mesh upper ensures a comfortable, secure, and durable fit, making the Mach X ideal for both training and race day. This shoe is designed to help you achieve your best run, whether its a speed workout or competition.',
      website1:'https://www.hoka.com/en/us/mens-everyday-running-shoes/mach-x/196565572363.html',
      website2:'https://www.runnersplus.com/hoka/mens-hoka-mach-x-45979?gad_source=4&gclid=Cj0KCQjw5cOwBhCiARIsAJ5njuZwmuBQ80865QtFVGvimrLqKeG0URa8yvEBSp1-H3Z7tHH_mYfd5H0aAp3OEALw_wcB',
      website3:'https://www.runningwarehouse.com/HOKA_Mach_X/descpage-HOMAXM3.html',
    ),
    ShoeTile(
      title: 'HOKA Crescendo MD Spikes',
      imageUrl: 'https://img.runningwarehouse.com/watermark/rs.php?path=HCRMDU2-1.jpg&nw=731',
      price1:'HOKA \$80',
      price2:'Runners Plus \$80',
      price3:'Running Warehouse \$79.95',
      description: 'The HOKA Crescendo MD is an entry-level track spike designed for up-and-coming athletes seeking comfort and speed. It features a compression molded bubble-foam midsole for enhanced cushioning, offering more underfoot comfort than traditional spikes. The 6-pin Pebax spike plate in the outsole provides structure and firmness for propulsion. Overall, the Crescendo MD is a great choice for athletes looking for a cushioned spike at an affordable price.',
      website1:'https://www.hoka.com/en/us/all-gender-footwear/crescendo-md/197634049816.html',
      website2:'https://www.runnersplus.com/hoka/unisex-hoka-crescendo-md-44700?gad_source=4&gclid=Cj0KCQjw5cOwBhCiARIsAJ5njub3lzNe0Cp2LxoSecV7YbftreSMqazELorXcu44ermZTyqt1vMXsX4aArq1EALw_wcB',
      website3:'https://www.runningwarehouse.com/HOKA_Crescendo_MD_Spikes/descpage-HCRMDU2.html',
    ),

    // Add more ShoeTile objects for other types of shoes
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'HOKA',
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
                          child: Text('Hoka'),
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