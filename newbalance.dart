// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sort_child_properties_last, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'popup_menu.dart';
import 'package:url_launcher/url_launcher.dart';

class NewBalancelist extends StatelessWidget {
  final List<ShoeTile> shoes = [
    ShoeTile(
      title: 'New Balance Fresh Foam X More v4',
      imageUrl: 'https://img.runningwarehouse.com/watermark/rs.php?path=NFFX4MG-1.jpg&nw=731',
      price1:'New Balance \$149.99',
      price2:'DICKS \$149.99',
      price3:'Running Warehouse \$149.95',
      description: 'The New Balance Fresh Foam X More v4 offers complete comfort with enhanced stability and cushioning. The widened Fresh Foam midsole provides increased impact dampening and support for running and walking. It features the largest midsole rocker in the Fresh Foam lineup to maintain forward momentum and smooth transitions. The lightweight, breathable mesh upper ensures a secure fit with minimal weight, and the durable rubber outsole offers longevity and excellent traction. Overall, the Fresh Foam X More v4 is a highly cushioned daily trainer perfect for runners and walkers seeking soft comfort for everyday use.',
      website1:'https://www.newbalance.com/pd/fresh-foam-x-more-v4/MMORCE4-D-10.html?ecid=ps_Google_pla_197375323800_19750156770&crtp=paidsearch&ncr=true&gad_source=4&gclid=Cj0KCQjw5cOwBhCiARIsAJ5njuaRaiRphDu7XBGmo9nvLAExUAiDURmgJMhK16o42qk4YoJNVAQPKXUaAlPfEALw_wcB&gclsrc=aw.ds',
      website2:'https://www.dickssportinggoods.com/p/new-balance-mens-fresh-foam-x-more-v4-running-shoes-22nwbmmrv4rctcgrywlk/22nwbmmrv4rctcgrywlk?sku=24493112&srsltid=AfmBOopDy3sbIOYaPzxP5sxKDHNyqgLTuouL2dx-jut_XxXNVyunQz7srBE',
      website3:'https://www.runningwarehouse.com/New_Balance_Fresh_Foam_X_More_v4/descpage-NFFX4MG.html',
    ),
    ShoeTile(
      title: 'New Balance FuelCell SuperComp Elite v4',
      imageUrl: 'https://img.runningwarehouse.com/watermark/rs.php?path=N4SCEM0-1.jpg&nw=731',
      price1:'New Balance \$249.99',
      price2:'Fleet Feet \$250',
      price3:'Running Warehouse \$249.95',
      description: 'The New Balance FuelCell SuperComp Elite v4 is a cutting-edge, highly cushioned carbon-plated racing shoe designed for peak performance in full and half marathons. Featuring a redesigned midsole with a reformulated FuelCell foam compound, the SuperComp Elite v4 offers an ultra-responsive ride that propels runners forward effortlessly. The unique bowed carbon fiber plate geometry and strategic void in the midsole contribute to exceptional energy return while maintaining a lightweight feel.The shoes breathable synthetic mesh upper with Fantomfit technology ensures a secure, locked-in fit that feels seamless on foot. With an aggressive toe spring, responsive midsole foam, and curved carbon fiber plate, the SC Elite v4 is engineered to optimize speed and performance, making it an excellent choice for runners seeking a competitive edge in their next race.',
      website1:'https://www.newbalance.com/pd/fuelcell-supercomp-elite-v4/MRCELLA4-D-085.html?ecid=ps_Google_pla_197375651354_19750156770&crtp=paidsearch&ncr=true&gad_source=4&gclid=Cj0KCQjw5cOwBhCiARIsAJ5njuaOTtxPC3iQlMV_7MZlnLprquV0IIX5UC-rFhWm2lJzcvtTT9u8dtQaAmaVEALw_wcB&gclsrc=aw.ds',
      website2:'https://www.fleetfeet.com/products/mens-new-balance-fuelcell-sc-elite-v4?srsltid=AfmBOoqixwyL6YLBkq0jSIoxVUIWu21YuiJKRcITjdT7q2iUml4JGHYV8vU&size=7',
      website3:'https://www.runningwarehouse.com/New_Balance_FuelCell_SuperComp_Elite_v4/descpage-N4SCEM0.html',
    ),
    ShoeTile(
      title: 'New Balance FuelCell MD-X Spikes',
      imageUrl: 'https://img.runningwarehouse.com/watermark/rs.php?path=NBSCMD-1.jpg&nw=731',
      price1:'New Balance \$159.99',
      price2:'DICKS \$159.99',
      price3:'Running Warehouse \$99.88',
      description: 'The New Balance FuelCell MD-X is a high-performance distance track spike inspired by competitive road models like the RC Elite and 5280. Featuring New Balances highest energy return foam and a stiff carbon fiber plate, the MD-X is designed for athletes competing in events from 800m to 5000m. This spike offers fast and efficient performance with excellent traction, making it a top choice for competitive racing.',
      website1:'https://www.newbalance.com/pd/fuelcell-md-x-v2/UMDELRS2-D-085.html?CAWELAID=172000630002848635',
      website2:'https://www.dickssportinggoods.com/p/new-balance-mens-fuelcell-md-x-track-and-field-shoes-21nwbamdlrv2whtprclt/21nwbamdlrv2whtprclt?sku=22643851&camp=CSE:DSG_92700079137493851_pla_aud-359064049599:pla-1832123468782_58700008644058014_71700000116956489&segment=&gad_source=4&gclid=Cj0KCQjw5cOwBhCiARIsAJ5njuYq1XD0RJ5-kS7jj4Iv1mcl5vM-nRC7iLdTRzfW7gzkXIwwKKktGRoaAjOFEALw_wcB&gclsrc=aw.ds',
      website3:'https://www.runningwarehouse.com/New_Balance_FuelCell_MD-X_Spikes/descpage-NBSCMD.html',
    ),

    // Add more ShoeTile objects for other types of shoes
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'New Balance',
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
                          child: Text('New Balance'),
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