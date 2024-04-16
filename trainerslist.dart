// ignore_for_file: prefer_const_constructors, sort_child_properties_last, library_private_types_in_public_api, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'popup_menu.dart';
import 'package:url_launcher/url_launcher.dart';

class Trainerslist extends StatelessWidget {
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
      title: 'Brooks Ghost Max',
      imageUrl: 'https://img.runningwarehouse.com/watermark/rs.php?path=BGHM1M1-1.jpg&nw=731',
      price1:'Brooks Running \$150',
      price2:'Heartbreak \$150',
      price3:'Running Warehouse \$149.95',
      description: 'The Brooks Ghost Max is designed for runners and walkers seeking exceptional cushioning and comfort. Featuring DNA LOFT v2 in the midsole for plush cushioning, GlideRoll Rocker technology for smooth transitions, and a Blown Rubber outsole for traction. The 3D Fit Print Mesh upper provides breathability and a secure fit. Ideal for all levels of runners, the Ghost Max offers a smooth and enjoyable ride.',
      website1:'https://www.brooksrunning.com/en_us/mens/shoes/road-running-shoes/ghost-max/1104061D124.115.html?tid=sem%3AGOOGLE%3AUSA%7CShopping%7CBrand%7CCore%7CLow%20Catch%20All%7CStandard%7CActive%20Evaluators%7CNeutral%3AAd%20group%201%3A_shopping&gclsrc=aw.ds&gad_source=1',
      website2:'https://heartbreak.run/products/brooks-mens-ghost-max?variant=48537113460896&currency=USD&utm_medium=product_sync&utm_source=google&utm_content=sag_organic&utm_campaign=sag_organic&utm_source=google&utm_medium=cpc&utm_campaign=&gad_source=4&gclid=Cj0KCQjw5cOwBhCiARIsAJ5njubHxmJyu5qHRiIPc3YFMVDuUtMMB9CgaD05-9X9KspbwKo8J--wi0oaAg-cEALw_wcB',
      website3:'https://www.runningwarehouse.com/Brooks_Ghost_Max/descpage-BGHM1M1.html',
    ),
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

    // Add more ShoeTile objects for other types of shoes
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Trainers',
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
                          child: Text('Brand Company'),
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