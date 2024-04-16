// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sort_child_properties_last, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'popup_menu.dart';
import 'package:url_launcher/url_launcher.dart';

class ONlist extends StatelessWidget {
  final List<ShoeTile> shoes = [
        ShoeTile(
      title: 'On Cloudspike 10000m Spikes',
      imageUrl: 'https://img.runningwarehouse.com/watermark/rs.php?path=OCS10M0-1.jpg&nw=731',
      price1:'ON Running \$149.99',
      price2:'Heartbreak \$150',
      price3:'Running Warehouse \$149.95',
      description: 'The On Cloudspike 10000m is an elite-level distance spike engineered with input from Ons Athletics Club athletes. Featuring Cloudtec technology with HELION HF foam and a full-length Speedboard plate, this spike offers exceptional responsiveness and power. Its minimal design provides a natural feel, while the 6-pin spike plate ensures surefooted traction on the track. Ideal for serious runners aiming for peak performance over any distance.',
      website1:'https://www.on.com/en-us/products/cloudspike-10000m-3md1067/mens/undyed-white-mint-shoes-3MD10671105?utm_source_platform=Google%20Ads&utm_source=google&utm_medium=cpc&utm_campaign=%5Bn%3AShopping%5D%5Bm%3AUS%5D%5Bl%3AEN%5D%5Bi%3ABrand%5D%5Bs%3AMix%5D%5Bv%3AMix%5D%5Bp%3AGeneral%2BTypos%5D&gad_source=1&gclid=Cj0KCQjw5cOwBhCiARIsAJ5njub-X1uvhgfMrwuzJOUekFlHOPDX989YgaL0BttSlU7BSeoNso8XAbcaAhBPEALw_wcB',
      website2:'https://heartbreak.run/products/cloudspike-1500m-mid-distance-womens-spike?variant=45309201580192&currency=USD&utm_medium=product_sync&utm_source=google&utm_content=sag_organic&utm_campaign=sag_organic&utm_source=google&utm_medium=cpc&utm_campaign=&gad_source=4&gclid=Cj0KCQjw5cOwBhCiARIsAJ5njuaD2DjSNgRF7ofrDoCzpfvyJ4AH4NxuWaUQJFL6nvQFsr_v4IItOxUaAiqvEALw_wcB',
      website3:'https://runningwarehouse.com/On_Cloudspike_10000m_Spikes/descpage-OCS10M0.html',
    ),
    ShoeTile(
      title: 'Cloudboom Echo 3',
      imageUrl: 'https://cdn.shopify.com/s/files/1/0129/6942/files/on-mens-cloudboom_echo_3-undyed_white_mint-3_720x540.jpg',
      price1:'ON Running \$289.99',
      price2:'Heartbreak \$290',
      price3:'Running Warehouse \$239.95',
      description: 'The ON Cloudboom Echo 3 is a high-performance racing shoe featuring ONs new Pebax super foam and a carbon plate for maximum propulsion and energy efficiency. Its microfiber upper is highly breathable and water-resistant, while the outsole delivers exceptional traction. Designed with input from elite athletes, this shoes innovative rocker shape enhances speed and energy return for faster racing times.',
      website1:'https://www.on.com/en-us/products/cloudboom-echo-3-0-3md1059/mens/undyed-white-mint-shoes-3MD10591105?utm_source_platform=Google%20Ads&utm_source=google&utm_medium=cpc&utm_campaign=%5Bn%3AShopping%5D%5Bm%3AUS%5D%5Bl%3AEN%5D%5Bi%3ABrand%5D%5Bs%3AShoes%5D%5Bv%3AMix%5D%5Bp%3AVerticals%5D&gad_source=1&gclid=Cj0KCQjw5cOwBhCiARIsAJ5njuYS-9ATeVuJFMLJ1iRVwGsMNnJxJqh5vvOkbleh2NZlzPTFjLE7mUIaAgXVEALw_wcB',
      website2:'https://heartbreak.run/products/cloudboom-echo-3-mens-shoes?variant=45307733180576&currency=USD&utm_medium=product_sync&utm_source=google&utm_content=sag_organic&utm_campaign=sag_organic&utm_source=google&utm_medium=cpc&utm_campaign=&gad_source=1&gclid=Cj0KCQjw5cOwBhCiARIsAJ5njuZdfB1BUfOyPnhZ5uZB0Ggd5c3kOWQloc5s9rDsgPZuJMAqhHSy2GcaAishEALw_wcB',
      website3:'https://www.marathonsports.com/products/on-running-mens-cloudboom-echo-3?sku=7037188767805&size=10.5&cmp_id=19653569427&adg_id=&kwd=&device=c&gad_source=1&gclid=Cj0KCQjw5cOwBhCiARIsAJ5njuaMUjNnG9kqn6c2Fe-OSoJJXgZUgg4ARBmN_h2Tv6wCoHqZpAB570MaAhWnEALw_wcB',
    ),
    ShoeTile(
      title: 'On Cloudflow 4',
      imageUrl: 'https://img.runningwarehouse.com/watermark/rs.php?path=OCFL4M6-1.jpg&nw=731',
      price1:'ON Running \$159.99',
      price2:'Heartbreak \$160',
      price3:'Running Warehouse \$159.95',
      description: 'The On Cloudflow 4 combines sleek design with a responsive underfoot experience, making it adaptable for any run or workout. Featuring CloudTec pods with Helium foam in the midsole, it offers cushioning and a connected-to-the-ground feel. The integrated SPEEDBOARD technology enhances toe-off responsiveness. Grip rubber pads on the outsole ensure reliable traction on various surfaces. With a streamlined, stylish upper, the On Cloudflow 4 is a versatile daily training shoe suitable for any run or workout.',
      website1:'https://www.on.com/en-us/products/cloudflow-4-3md3010/womens/pearl-black-shoes-3WD30112325',
      website2:'https://heartbreak.run/products/cloudflow-4-mens-shoes-2?variant=47071808848032&currency=USD&utm_medium=product_sync&utm_source=google&utm_content=sag_organic&utm_campaign=sag_organic&utm_source=google&utm_medium=cpc&utm_campaign=&gad_source=4&gclid=Cj0KCQjw5cOwBhCiARIsAJ5njuajARTazgLyIigZTgEp0W3PveGF35JCoCZMeJuK18QysFEui_3jHT4aAo4REALw_wcB',
      website3:'https://www.runningwarehouse.com/On_Cloudflow_4/descpage-OCFL4M6.html',
    ),

    // Add more ShoeTile objects for other types of shoes
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'ON',
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
                          child: Text('ON Running'),
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