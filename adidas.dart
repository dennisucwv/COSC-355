// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sort_child_properties_last, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'popup_menu.dart';
import 'package:url_launcher/url_launcher.dart';

class AdidasList extends StatelessWidget {
  final List<ShoeTile> shoes = [
   ShoeTile(
      title: 'Adidas adizero Boston 12',
      imageUrl: 'https://img.runningwarehouse.com/watermark/rs.php?path=AAB12M8-1.jpg&nw=731',
      price1:'Adidas \$160',
      price2:'DICKS \$159.99',
      price3:'Running Warehouse \$159.95',
      description: 'The adidas adizero Boston 12 is a high-performance daily trainer featuring Lightstrike Pro and Lightstrike 2.0 foams for a comfortable and fast ride. ENERGYRODS 2.0 enhance toe-off, and Continental rubber provides reliable traction. The lightweight recycled mesh upper offers structure and breathability, making it ideal for uptempo training and daily runs. Overall, a responsive shoe for runners seeking improved performance.',
      website1:'https://www.adidas.com/us/adizero-boston-12-running-shoes/IG3320.html?af_channel=Search&af_click_lookback=30d&af_reengagement_window=30d&c=PLA&cm_mmc=AdieSEM_Feeds-_-GoogleProductAds-_-NA-_-IG3320&cm_mmca1=US&cm_mmca2=NA&gad_source=4&gclid=Cj0KCQjw5cOwBhCiARIsAJ5njuZrlgJFB3BAgM9zIya8gFrSPUwGb43r8oIQEDCz5IzfsWEOeaALbkkaAnCdEALw_wcB&gclsrc=aw.ds&is_retargeting=true&kpid=IG3320&pid=googleadwords_temp&sourceid=543457011IG3320',
      website2:'https://www.dickssportinggoods.com/p/adidas-mens-adizero-boston-12-running-shoes-23adimdzrbstn12mbmns/23adimdzrbstn12mbmns?sku=24381919&srsltid=AfmBOooXrbIkOKUKP0AhEltgP4bzR6X8Uk8m52P0xMsMCxf4eBhA_FELAR4',
      website3:'https://www.runningwarehouse.com/adidas_adizero_Boston_12/descpage-AAB12M8.html',
    ),
    ShoeTile(
      title: 'Adidas adizero Takumi Sen 10',
      imageUrl: 'https://img.runningwarehouse.com/watermark/rs.php?path=A10TSM2-1.jpg&nw=731',
      price1:'Adidas \$180',
      price2:'Marathon Sport \$179.95',
      price3:'Running Warehouse \$179.95',
      description: 'The adidas adizero Takumi Sen 10 is a lightweight, race-ready shoe with optimal cushioning and agility. Featuring Lightstrike Pro foam and EnergyRods 2.0 for flexibility and snappiness, its designed for fast times. The outsole offers grip with Continental rubber and textile rubber, while the Recycled Mesh upper provides a comfortable, distraction-free fit. Perfect for short-distance racing and delivering top performance on race day.',
      website1:'https://www.adidas.com/us/adizero-takumi-sen-10-m/IG8202.html?af_channel=Search&af_click_lookback=30d&af_reengagement_window=30d&c=PLA&cm_mmc=AdieSEM_Feeds-_-GoogleProductAds-_-NA-_-IG8202&cm_mmca1=US&cm_mmca2=NA&gad_source=4&gclid=Cj0KCQjw5cOwBhCiARIsAJ5njuZtA1ZqNz-mlNlrdCo6x3FzvXkv-B126jbhRedMSTLnj0y8FYqr65YaApGfEALw_wcB&gclsrc=aw.ds&is_retargeting=true&kpid=IG8202&pid=googleadwords_temp&sourceid=543457011IG8202',
      website2:'https://www.marathonsports.com/products/adidas-mens-adizero-takumi-sen-10?sku=7196773777469&size=10.5&cmp_id=19747877240&adg_id=&kwd=&device=c&gad_source=4&gclid=Cj0KCQjw5cOwBhCiARIsAJ5njubENaJv3O_PmHNrSYg3Dj-iBUh7-epYC5HIzzqDMB0yU2BSkZxEch8aArlXEALw_wcB&width=Medium+%28D%29',
      website3:'https://www.runningwarehouse.com/adidas_adizero_Takumi_Sen_10/descpage-A10TSM2.html',
    ),
    ShoeTile(
      title: 'Adidas adizero Ambition Spikes',
      imageUrl: 'https://img.runningwarehouse.com/watermark/rs.php?path=ADSPAMG-1.jpg&nw=731',
      price1:'Adidas \$150',
      price2:'DICKS \$149.99',
      price3:'Running Warehouse \$149.95',
      description: 'The adidas adizero Ambition is an advanced middle-distance track spike that combines the best qualities of high-performance track spikes. It features adidas premium cushioning and their most aggressive spike plate, making it ideal for runners aiming to achieve big goals in the 800m to 1600m distances. This spike is designed to enhance energy efficiency and performance for middle-distance events.',
      website1:'https://www.adidas.com/us/adizero-ambition-track-and-field-lightstrike-running-shoes/IE5486.html?af_channel=Search&af_click_lookback=30d&af_reengagement_window=30d&c=PLA&cm_mmc=AdieSEM_Feeds-_-GoogleProductAds-_-NA-_-IE5486&cm_mmca1=US&cm_mmca2=NA&gad_source=4&gclid=Cj0KCQjw5cOwBhCiARIsAJ5njuY4LwYTILBqbY6bgsKVXGI0PPpN-6wW1WHqXLDQ4Jydi_i6cAtgFTAaAiB0EALw_wcB&gclsrc=aw.ds&is_retargeting=true&kpid=IE5486&pid=googleadwords_temp&sourceid=543457011IE5486',
      website2:'https://www.dickssportinggoods.com/p/adidas-adizero-ambition-track-and-field-cleats-20adiadzrmbtnmylwclt/20adiadzrmbtnmylwclt?sku=24920439&camp=CSE:DSG_92700079137466347_pla_aud-359064049599:pla-1833942158058_58700008644057942_71700000116956489&segment=&gad_source=4&gclid=Cj0KCQjw5cOwBhCiARIsAJ5njuYBNdPW6jZdl29D6ohFD8VUZKqf6jEruKoADkKEBX9_lKHDhQf2UgoaAqmfEALw_wcB&gclsrc=aw.ds',
      website3:'https://www.runningwarehouse.com/adidas_adizero_Ambition_Spikes/descpage-ADSPAMG.html',
    ),

    // Add more ShoeTile objects for other types of shoes
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Adidas',
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
                          child: Text('Adidas'),
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