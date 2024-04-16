// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sort_child_properties_last, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'popup_menu.dart';
import 'package:url_launcher/url_launcher.dart';

class Brooklist extends StatelessWidget {
  final List<ShoeTile> shoes = [
    ShoeTile(
      title: 'Brooks Hyperion Elite 3',
      imageUrl: 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxISEhMSEhMWExUSFRgVFRYXEhcYFRcXFxUYFxsVFhYYHSkhGholHRUVITEiJSorLi4uFx8zODMtNyguMCsBCgoKDg0OFxAQFysfHyUtLS0tLS0wLSstLS8rLS0tLS0wLTExNS8rLSstLS0tKy0uLS4tLSstLSstLS0tLS01Lf/AABEIAOEA4QMBIgACEQEDEQH/xAAbAAEAAgMBAQAAAAAAAAAAAAAAAwQCBQYHAf/EAEQQAAEDAgMEBwUGAggHAQAAAAEAAhEDIQQxQRJRYXEFBiIygZGxE6HB0fBCUnKCkuEjQwcUFTNiouLxRFNUY2SDshb/xAAYAQEBAQEBAAAAAAAAAAAAAAAAAQIDBP/EACgRAQEAAgECAgsBAAAAAAAAAAABAhExAyFhoRITQVFxgZGx0eHwMv/aAAwDAQACEQMRAD8A9xREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERARF8c4ASTAQfVFXxDWCXHyBJ8gtJ09069gaKDQ4uN6jnBrGDfe7uQBXI9O1qjnUnMePaEO23xEyGizbkZSLiIG+VZGMs5Jy67/9S3bdTFKpLTEkQ0iAdoONovGehTHdMkwG9kc7nx3LznEvxFbZY9rmPBM1GvDQbWdB+9faEHIEKTBdJ1aTzSNRuIAG05o/vWt+8RuPhwlXUcL1Mq7qh1gcDcg8CI8iFusD0pTq2FnfdPwOq4CnWbVbtUnbQ1H2hvEKx0ZUdtAA3kbO+Z04ZJox6lj0VERZeoRFwf8ASB1vFIjC0e1UedlwbmScqY47/wDdGcspjN1sumes/b9jhzJ+0/QRnHDj5LX9CdLudiqVIPc6Sdokkgw1x15LkMdjPYMFIEOrVO92hFswCfstnPU87b3+jKj/ABy513ezJnIky0SQLTB00gK3s4Y25Zbr0xERR6RERAREQEREBERAREQERQYnFsZ3j4RJQt0nUdau1sbRict/l4hc/U6f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6Uc6wVGnhHOyE++PrmrFHBGQ3MmwAWnJsOgsMXv2nXDbmd+gXUKt0fhBSYGjmTvO9WVl6cMdQRERoREQfHAEQbg5hafGdDRJpH8hNvA6LZ1qxb9kniMlTqdIHQAe9EuMvLn3tEw4bJGhXx1FbHFO2+9da57dnukrW3G9KzhgWEa+d/rxXzaduB8fmvoxO+PRZisDp8fRHOyxhtncfMfNfZO73j5/NZh7foH5LLbZ9AqogPh75UZoE7/KFbNcDJvnAVat0iG6gfW8oMDgDmTH1xUbsE3eXcvmqlbplk99nMvE+qwbjg/+YDyPyUXVW/6swaAe8qVmyMpPuVWnVZ94KwzEU/vt/UENX3J230Cla074UTcQz77f1BTMeDqPMIaZjDg5u81kOjmnUe5fAxYlhQWGdGN4eQUzeiJyj3LXweKbTuPvQbP+yDqfesXYOkzvOHKZPktY9ztSfNV31Rvng2/vyRZN8Rsa+MHdpiBvOf7LZ9XcONk1dTZp4bxzM+XFaChQL+9Zv3Rr+I6jgFtqbzkPABS11ww13rokVTAMeAdrI5DVW1HUREQEREBR1KLXZtB8FIiCnU6NpnQjkT8VWqdBsP2ne75Laog0VTq00/bP6Qq7uqYP80j8v7rpUQcweqP/AJFQcpHxX0dTmfar1zyqELpkRNRz9Pqhhoh3tag3PrPI8pVqh1ZwbO7h6XiwH1W2RFQUsFSb3abG8mAegUwC+ogLE0wcwPJZIghdhKZzpsPNo+Sgf0TQOdGn+gD0V1EGrf1ewpzpN8CR8VXf1VwxyD2/hqELeIg553VKjpUqj84PwUTuqDdKz/ESumRBy46of94/o/1Kal1Yj+b/AJP9S6JEGqo9CNbm5x8gthRw7Wd0R6+alRAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREH//2Q==',
      price1:'Brooks Running \$179',
      price2:'Heartbreak \$179.95',
      price3:'Running Warehouse \$119.88',
      description: 'Get the most out of yourself on race day with the ultra-light and fast Hyperion Elite 3. This advanced road-racing shoe is specifically designed for optimal performance, featuring a carbon plate that propels you forward with each stride, ensuring efficiency at race effort. Ideal for road running and racing, the Hyperion Elite 3 provides a responsive ride, improved fit, and exceptional energy return. Whether you''re aiming for a personal best or dominating the race, this shoe is crafted to enhance your speed and deliver an unparalleled racing experience.',
      website1:'https://www.brooksrunning.com/en_us/hyperion-elite-3-unisex-running-shoe/1000421D492.070.html?tid=sem:GOOGLE:USA%7CShopping%7CBrand%7CCore%7CLow+Catch+All%7CStandard%7CActive+Evaluators%7CNeutral:Ad+group+1:_shopping&gclsrc=aw.ds&gad_source=1',
      website2:'https://heartbreak.run/products/brooks-hyperion-elite-3-shoes?variant=42060367724704&currency=USD&utm_medium=product_sync&utm_source=google&utm_content=sag_organic&utm_campaign=sag_organic&utm_source=google&utm_medium=cpc&utm_campaign=&gad_source=1&gclid=Cj0KCQjw5cOwBhCiARIsAJ5njub3C3A2EYpH988jcG7wKKOKy6El_YoT663AxscgRKhkiKAHdlDnweUaApspEALw_wcB',
      website3:'https://www.runningwarehouse.com/Brooks_Hyperion_Elite_3/descpage-BHYPM01.html?from=gshop&gad_source=1&gclid=Cj0KCQjw5cOwBhCiARIsAJ5njub0-PJqyTs9qonNdVs4XersvBif1Wbb_WoXBESbmpARpdqMQBq2TfYaAuU8EALw_wcB',
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
    // Add more ShoeTile objects for other types of shoes
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Brooks',
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
                          child: Text('Brooks Running'),
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