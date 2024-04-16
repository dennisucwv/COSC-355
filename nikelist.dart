// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sort_child_properties_last, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'popup_menu.dart';
import 'package:url_launcher/url_launcher.dart';

class Nikelist extends StatelessWidget {
  final List<ShoeTile> shoes = [
    //Nike
    ShoeTile(
      title: 'Nike ZoomX Dragonfly',
      imageUrl: 'https://img.runningwarehouse.com/watermark/rs.php?path=NZMZD09-1.jpg&nw=455',
      price1:'Nike \$160',
      price2:'Heartbreak \$160',
      price3:'Running Warehouse \$159.95',
      description: 'Experience peak performance on the track with the Nike ZoomX Dragonfly, a lightweight racing shoe designed for 1,500 to 10,000-meter races, featuring Nike ZoomX foam for responsive energy return, a breathable mesh upper, and a forefoot plate with a ridged design for a smooth transition; equipped with detachable stainless steel spikes and World Athletics approval, weighing 4.4oz in Mens size 8/Womens size 10, presented in Hyper Pink/Laser Orange/Black (Style: CV0400-600)',
      website1:'https://www.nike.com/t/zoomx-dragoy-track-field-distance-spikes-0P9jtc/CV0400-600?nikemt=true&cp=35640345119_search_--x-20429762868---c-----9009137-14228810-00196151807633&gad_source=1&gclid=Cj0KCQiA5rGuBhCnARIsAN11vgSvOGcBrcBOMrhnZsXgObBGu1qo83U6NVWSvTkITYI4X05xPRntPtsaAkBtEALw_wcB&gclsrc=aw.ds',
      website2:'https://heartbreak.run/products/nike-zoomx-dragonfly-track-field-distance-spikes?variant=47479897391264&currency=USD&utm_medium=product_sync&utm_source=google&utm_content=sag_organic&utm_campaign=sag_organic&utm_source=google&utm_medium=cpc&utm_campaign=&gad_source=4&gclid=Cj0KCQiArrCvBhCNARIsAOkAGcWvbiOr25O7_FRfn4IP9GbsBotQLpS75Cx2RlYoaSJSpBNiRyzypcUaAh5yEALw_wcB',
      website3:'https://www.runningwarehouse.com/Nike_Dragonfly_Spike/descpage-NZMZD08.html?from=gshop&gad_source=1&gclid=Cj0KCQiArrCvBhCNARIsAOkAGcXnPLSnTK4gq95TpG7Fq4d_Lk3rxn9dTF3-97y5kbhrSEp7Oco3pzQaAlVxEALw_wcB',
    ),
    ShoeTile(
      title: 'Nike Vaporfly Next% 3',
      imageUrl: 'https://img.runningwarehouse.com/watermark/rs.php?path=NZVN3M9-1.jpg&nw=731',
      price1:'Nike \$260',
      price2:'Heartbreak \$270',
      price3:'Running Warehouse \$259.95',
      description: 'The Nike ZoomX Vaporfly NEXT% 3 continues the legacy of its predecessors, offering an unparalleled running experience on race day. It features a lighter and refined design for its smoothest ride yet. The ZoomX foam, a leader in lightweight and resilient cushioning since its debut in 2016, is at the core of this shoes technology. The redesigned midsole provides increased stability, energy return, and smoother transitions with a convex shape around the forefoot. The carbon-fiber Flyplate enhances energy return as speed increases, helping you maintain pace effortlessly. The outsole has thinner rubber to accommodate more ZoomX foam without sacrificing grip. The stripped-down FlyKnit upper offers an ideal race fit while providing necessary structure for comfort over a marathon distance.',
      website1:'https://www.nike.com/t/vaporfly-3-mens-road-racing-shoes-8DD182/DV4129-100?nikemt=true&cp=35640345119_search_--x-20429762868---c-----9009137-1010081837-00196604443692&gad_source=4&gclid=Cj0KCQjw5cOwBhCiARIsAJ5njubeJtfhvWsCfudDUOKkntpo7QQS2AOY2kMdvz  o1nPhphCi0vFxeJgsaAkYVEALw_wcB&gclsrc=aw.ds',
      website2:'https://heartbreak.run/products/nike-zoomx-vaporfly-next-3-mens-shoe-5?variant=48346490732704&currency=USD&utm_medium=product_sync&utm_source=google&utm_content=sag_organic&utm_campaign=sag_organic&utm_source=google&utm_medium=cpc&utm_campaign=&gad_source=4&gclid=Cj0KCQjw5cOwBhCiARIsAJ5njuatX3p7l1OJZehCWWeNqJz8HbEw7PKJweWVpa2Qj2H4gFFimgt5YqEaAnVxEALw_wcB',
      website3:'https://www.runningwarehouse.com/Nike_Vaporfly_Next_3/descpage-NZVN3M9.html',
    ),
    ShoeTile(
      title: 'Nike Pegasus 40',
      imageUrl: 'https://img.runningwarehouse.com/watermark/rs.php?path=NP40M14-1.jpg&nw=731',
      price1:'Nike \$90.97',
      price2:'Heartbreak \$130',
      price3:'Running Warehouse \$139.95',
      description: 'The Nike Pegasus 40 continues the legacy of the popular Pegasus line, beloved by both elite runners and casual enthusiasts alike. This iteration retains the familiar midsole and outsole, featuring REACT Foam for soft yet responsive cushioning and Zoom Air units in the forefoot and heel for added bounce. The outsoles durable blown rubber with a waffle pattern ensures excellent traction on various road surfaces. The updated engineered mesh upper enhances on-foot comfort. Overall, the Pegasus 40 remains a versatile and reliable trainer, offering a soft and responsive ride suitable for all runners.',
      website1:'https://www.nike.com/t/pegasus-40-mens-road-running-shoes-extra-wide-zD8H1c/DV3853-100?nikemt=true&cp=31765401338_search_--x-20455850764---c-----9009137-1010088032-00196604439343&gad_source=1&gclid=Cj0KCQjw5cOwBhCiARIsAJ5njua_5Qg74_EXyg9um03_csxpO6-YPs_DBJg6-cEq4R_WeFwRIbqOvSAaAiOlEALw_wcB&gclsrc=aw.ds',
      website2:'https://heartbreak.run/products/nike-air-zoom-pegasus-40-men-s-shoes?variant=44269833552032&currency=USD&utm_medium=product_sync&utm_source=google&utm_content=sag_organic&utm_campaign=sag_organic&utm_source=google&utm_medium=cpc&utm_campaign=&gad_source=4&gclid=Cj0KCQjw5cOwBhCiARIsAJ5njuaXugKsX2jlD6G6nBr1NQZZI1IvJ97qk-IZOG_VNwFS3rVOMQse11UaAlr8EALw_wcB',
      website3:'https://www.runningwarehouse.com/Nike_Pegasus_40/descpage-NP40M14.html',
    ),
    // Add more ShoeTile objects for other types of shoes
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Nike',
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
                          child: Text('Nike'),
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