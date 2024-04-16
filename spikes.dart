// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sort_child_properties_last, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'popup_menu.dart';
import 'package:url_launcher/url_launcher.dart';

class Spikeslist extends StatelessWidget {
  final List<ShoeTile> shoes = [
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
    ShoeTile(
      title: 'Brooks Wire v8 Spikes',
      imageUrl: 'https://img.runningwarehouse.com/watermark/rs.php?path=BWIRE8-1.jpg&nw=731',
      price1:'Brooks Running \$150',
      price2:'Runner Plus \$112.50',
      price3:'Running Warehouse \$99.88',
      description: 'The Brooks Wire v8 is a cutting-edge distance spike designed with input from elite athletes for peak performance. Ideal for events from 1,500m to 10,000m, it features a full midsole of nitrogen-infused foam for exceptional responsiveness. The updated spike plate adds rigidity for enhanced efficiency. Experienced distance runners seeking top performance on race day should strongly consider the Brooks Wire v8.',
      website1:'https://www.brooksrunning.com/en_us/featured/unisex-running-shoes/wire-8/1000441D467.095.html?tid=sem%3AGOOGLE%3AUSA%7CShopping%7CBrand%7CCore%7CLow%20Catch%20All%7CStandard%7CActive%20Evaluators%7CNeutral%3AAd%20group%201%3A_shopping&gclsrc=aw.ds&gad_source=4',
      website2:'https://www.runnersplus.com/brooks/unisex-brooks-wire-8-43822?gad_source=4&gclid=Cj0KCQjw5cOwBhCiARIsAJ5njubgDI4nY3OzVh_atq9HqrSWhZwzoEVS4xw8ZGoOVZ5QSdAEuILaRq4aAqhAEALw_wcB',
      website3:'https://www.runningwarehouse.com/Brooks_Wire_v8_Spikes/descpage-BWIRE8.html',
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
          'Spikes',
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