// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors, sort_child_properties_last, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'popup_menu.dart';
import 'package:url_launcher/url_launcher.dart';

class Pumalist extends StatelessWidget {
  final List<ShoeTile> shoes = [
    ShoeTile(
      title: 'PUMA Velocity Nitro 3',
      imageUrl: 'https://img.runningwarehouse.com/watermark/rs.php?path=PU3VNM2-1.jpg&nw=731',
      price1:'PUMA \$135',
      price2:'Foot Locker \$135',
      price3:'Running Warehouse \$135',
      description: 'The PUMA Velocity Nitro 3 is a versatile and reliable daily trainer designed to meet all your running needs. With a full-length NITRO Foam midsole offering enhanced cushioning and responsiveness, this shoe provides soft landings and explosive toe-offs. The durable PUMAGRIP rubber outsole ensures exceptional grip on various surfaces, while the engineered mesh upper delivers breathable comfort and a secure fit. Ideal for runners of all speeds and distances, the Velocity Nitro 3 is a perfect choice for those seeking a dependable companion for any type of run.',
      website1:'https://us.puma.com/us/en/pd/velocity-nitro%E2%84%A2-3-psychedelic-rush-mens-running-shoes/380080?swatch=01&size=0250&gad_source=4&gclid=Cj0KCQjw5cOwBhCiARIsAJ5njubh6mVWXkuvgMK9cSKAcAC167socb5QMeS4gCaujgigDFQpQ5bm364aAouSEALw_wcB',
      website2:'https://www.footlocker.com/product/~/3808001.html?source=shoppingads&locale=en-US&SID=9114&inceptor=1&cm_mmc=paid%20search-_-google-_--_-PLA-_-DPA-_--_-P-_-Prospecting-_--_-20575494220-_--_--_-PLA-_-380800110-_--_--_-&cm_mmc=Paid%20Search-_-Google-_--_-PMAX%20Standard-_--_--_--_--_-Evergreen-_-20575494220-_--_--_--_--_--_--_-&gad_source=4&gclid=Cj0KCQjw5cOwBhCiARIsAJ5njuYmy4GmyDlApPlDNVH6_eB4LFJ0h_r6LS3A-4wB5RP64dKljVAv-1UaArNwEALw_wcB&gclsrc=aw.ds',
      website3:'https://www.runningwarehouse.com/PUMA_Velocity_Nitro_3/descpage-PU3VNM2.html',
    ),
    ShoeTile(
      title: 'PUMA Deviate Nitro Elite 2',
      imageUrl: 'https://img.runningwarehouse.com/watermark/rs.php?path=PDNE2M3-1.jpg&nw=731',
      price1:'PUMA \$200',
      price2:'DICKS \$159.99',
      price3:'Running Warehouse \$200',
      description: 'The PUMA Deviate Nitro Elite 2 is a carbon-plated race day shoe that excels in durability and versatility. It features NITRO Elite foam and a carbon fiber PWRPLATE for a cushioned and responsive ride ideal for speed training and racing. The PUMAGRIP rubber outsole provides exceptional durability and traction in any condition. The mono-mesh upper offers a snug fit and breathability for long tempo runs or intense speed sessions. Overall, the Deviate Nitro Elite 2 delivers race-day performance for all your training needs, making it a go-to choice for dedicated runners.',
      website1:'https://us.puma.com/us/en/pd/deviate-nitro%E2%84%A2-elite-2-mens-running-shoes/380088?swatch=01&size=0190&gad_source=4&gclid=Cj0KCQjw5cOwBhCiARIsAJ5njub48AusVAgqqVouAIGj_5pSss47hzfRGtl_sJ1LqCOEH1U3_QKKrh0aAnEbEALw_wcB',
      website2:'https://www.dickssportinggoods.com/p/puma-mens-deviate-nitro-2-running-shoes-22pummdvtntr2xxxxmns/22pummdvtntr2xxxxmns?sku=25155339&srsltid=AfmBOoqmEbH3fQLEMk4i6-2Cn4S36zRV7StzKEoJOm1rgeei6HCKtjTw7bw',
      website3:'https://www.runningwarehouse.com/PUMA_Deviate_Nitro_Elite_2/descpage-PDNE2M3.html',
    ),
    ShoeTile(
      title: 'PUMA evoSpeed Distance Nitro Elite+ 4 Spikes',
      imageUrl: 'https://img.runningwarehouse.com/watermark/rs.php?path=PD4NEU1-1.jpg&nw=731',
      price1:'PUMA \$180',
      price2:'Runners Plus \$180',
      price3:'Running Warehouse \$180',
      description: 'The PUMA evoSPEED Distance Nitro Elite+ 4 is an ultra-lightweight, highly-responsive track spike designed to elevate your performance on race day. It features a full-length internal carbon plate and Nitro Elite foam in the midsole for an energetic and responsive ride. The Pebax sockliner adds comfort and cushioning, complementing the Pebax Plate outsole with 6 pins for agile traction on the track. The shoes geometry is optimized for speed, propelling runners onto their toes for maximum propulsion. The one-piece upper construction offers a lightweight, snug fit for exceptional comfort, allowing you to focus on achieving personal records and victory. Overall, the evoSPEED Distance Nitro Elite+ 4 delivers explosive performance to help you excel in your races.',
      website1:'https://us.puma.com/us/en/pd/evospeed-distance-nitro%E2%84%A2-eliteand-4-mens-track-spikes/380000?swatch=01&size=0300&gad_source=4&gclid=Cj0KCQjw5cOwBhCiARIsAJ5njuaUOpGuUXweD5DaEejoxZkTgnZtSnGz3srYLasTr0WNptO7aUOaeVcaAtgqEALw_wcB',
      website2:'https://www.runnersplus.com/puma/unisex-evospeed-distance-nitro-elite-4-47631?gad_source=4&gclid=Cj0KCQjw5cOwBhCiARIsAJ5njuaFVhcLq_njosyQvowA8RyzfriX6UwdJBthaZ72OsnRX8zNLBLxC2saAsOOEALw_wcB',
      website3:'https://www.runningwarehouse.com/PUMA_evoSpeed_Distance_Nitro_Elite_4_Spikes/descpage-PD4NEU1.html',
    ),
    // Add more ShoeTile objects for other types of shoes
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Puma',
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
                          child: Text('Puma'),
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