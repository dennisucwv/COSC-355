// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sort_child_properties_last
// ShoeTile(
//      title: '',
//      imageUrl: '',
//      price1:'Under Armour \$',
//      price2:'Heartbreak \$',
//     price3:'Running Warehouse \$',
//      description: '',
//      website1:'',
//      website2:'',
//      website3:'',
//    ),
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'popup_menu.dart';


class FullListScreen extends StatelessWidget {
  final List<ShoeTile> shoes = [
  //Adidas
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
  //Asics
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
      title: 'ASICS METASPEED Edge Paris',
      imageUrl: 'https://img.runningwarehouse.com/watermark/rs.php?path=AMSE2UP-1.jpg&nw=731',
      price1:'Asics \$250',
      price2:'Heartbreak \$250',
      price3:'Running Warehouse \$249.95',
      description: 'The ASICS METASPEED Edge Paris is a high-performance racing shoe designed for cadence runners aiming to achieve personal bests in half and full marathons. It features FF TURBO PLUS foam in the midsole for ultra-responsive and cushioned ride, promoting faster leg turnover. The carbon fiber plate is strategically angled to enhance propulsion and stride cadence, making running fast feel effortless. The ASICSGRIP rubber outsole provides traction in various road conditions, and the MOTION WRAP 2.0 upper offers a race-ready fit with breathability and secure foot lockdown. Overall, the METASPEED Edge Paris is an excellent choice for maximizing performance in long-distance races.',
      website1:'https://heartbreak.run/products/asics-metaspeed-sky-paris?variant=48955174551712&currency=USD&utm_medium=product_sync&utm_source=google&utm_content=sag_organic&utm_campaign=sag_organic&utm_source=google&utm_medium=cpc&utm_campaign=&gad_source=4&gclid=Cj0KCQjw5cOwBhCiARIsAJ5njuZZeV1IqQJLlkNB4IusB21O-kv6ldYCphgEhxSwfDROiu-d29valhwaAs6PEALw_wcB',
      website2:'https://heartbreak.run/products/asics-metaspeed-sky-paris?variant=48955174551712&currency=USD&utm_medium=product_sync&utm_source=google&utm_content=sag_organic&utm_campaign=sag_organic&utm_source=google&utm_medium=cpc&utm_campaign=&gad_source=4&gclid=Cj0KCQjw5cOwBhCiARIsAJ5njuZZeV1IqQJLlkNB4IusB21O-kv6ldYCphgEhxSwfDROiu-d29valhwaAs6PEALw_wcB',
      website3:'https://www.runningwarehouse.com/ASICS_METASPEED_Edge_Paris/descpage-AMSE2UP.html',
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
  //Brooks
    ShoeTile(
      title: 'Brooks Hyperion Elite 3',
      imageUrl: 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxISEhMSEhMWExUSFRgVFRYXEhcYFRcXFxUYFxsVFhYYHSkhGholHRUVITEiJSorLi4uFx8zODMtNyguMCsBCgoKDg0OFxAQFysfHyUtLS0tLS0wLSstLS8rLS0tLS0wLTExNS8rLSstLS0tKy0uLS4tLSstLSstLS0tLS01Lf/AABEIAOEA4QMBIgACEQEDEQH/xAAbAAEAAgMBAQAAAAAAAAAAAAAAAwQCBQYHAf/EAEQQAAEDAgMEBwUGAggHAQAAAAEAAhEDIQQxQRJRYXEFBiIygZGxE6HB0fBCUnKCkuEjQwcUFTNiouLxRFNUY2SDshb/xAAYAQEBAQEBAAAAAAAAAAAAAAAAAQIDBP/EACgRAQEAAgECAgsBAAAAAAAAAAABAhExAyFhoRITQVFxgZGx0eHwMv/aAAwDAQACEQMRAD8A9xREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERARF8c4ASTAQfVFXxDWCXHyBJ8gtJ09069gaKDQ4uN6jnBrGDfe7uQBXI9O1qjnUnMePaEO23xEyGizbkZSLiIG+VZGMs5Jy67/9S3bdTFKpLTEkQ0iAdoONovGehTHdMkwG9kc7nx3LznEvxFbZY9rmPBM1GvDQbWdB+9faEHIEKTBdJ1aTzSNRuIAG05o/vWt+8RuPhwlXUcL1Mq7qh1gcDcg8CI8iFusD0pTq2FnfdPwOq4CnWbVbtUnbQ1H2hvEKx0ZUdtAA3kbO+Z04ZJox6lj0VERZeoRFwf8ASB1vFIjC0e1UedlwbmScqY47/wDdGcspjN1sumes/b9jhzJ+0/QRnHDj5LX9CdLudiqVIPc6Sdokkgw1x15LkMdjPYMFIEOrVO92hFswCfstnPU87b3+jKj/ABy513ezJnIky0SQLTB00gK3s4Y25Zbr0xERR6RERAREQEREBERAREQERQYnFsZ3j4RJQt0nUdau1sbRict/l4hc/U6fcS7ZhoBgS2xz7QOsEEEct61PSWPe6pJNmRBkztnMmLReB+betei5Xqz2Oh6Q6ZaGO2SWxYvsIvFp10vqQuaxPSo2dqo6A0S8z2AATOeQtv8A3o1sTVe/ZLR7OdouLiXOsSAGAEQDvg21UdQNsHwY0dAuN20AJmMirw45Z2lTF+1JqZtcexe2xFiAN4AMHeVXpUCwlxqPeHZNhoa0cGtE8ySZI88qzs5kDIztNnS7wSCOar1TGYgG8uaPP2jMtIlNsJ/bAzEyIPZbJFo4um+UKM1wbBwNzaTM2MEONjEafvTxD8i45ZEnbAMfZc3tAlQVawiHG0ZEe1aBuabPkjM3z85asxt4i49jQ8EP9lUOsgExo5pgOEA5X87bHA9LGlUbUqN2HNyqbM03WuXD7P4rcyufa6W27osQz+K3gzZzA8PgvlKvs3Ycs/Zulsi4b7O8ADgmzh630f1gpVACTsnfMt8HDLxhXndIUQJ9qyPxt+a8cp1m3cIDpPapuNM7Wfd7p1z0OVlbdjmxD6jiTZrarKQJOdiWQREi081NOvrcpy6nrV19ZTHscIDXrvkN2GkxpPhvMALh8Lh3UdqrUiri3AzEubRDp7MgElx1IB3AZk36mLbTaZLg0nugBs8/ZNEZxfj40X1XO7LQKTQe3s7ESbbBJLXBxIi+45wqxbcr3VWUTL9p224nt7LwQSMqew7uiDJHAyV0/UvF+zxFMyIedl1j9q0w64G0De9mrn61XVwsJizXANiCQWwQXCdVNgnmYyjc6QDlF4IiP82uSiztXtiKp0Ti/bUadT77ATwMXHgZCtqPUIiICIua6X6wlriynYNMOdmTyHmiZZSTu6VYOqtGZA5kLiz0083LyRu2ovu0so6lbWcspMeMxnlYlXTnerHanF0x9tv6gsHdIUhm8LiDVjWPG2W++/zX11dw14STBy4214K6Z9d4Owf0vSH2ibxZp+Kgr9P0m6OPl81yLqjo1BjlppPw3KOpjSMwWzwBBnj+6aZvVrpcV0689yGDiJPkVpa/SbzDXtL3k7RfbZA4XHEQN4K1zsbuLTpq31m9/eq1fEHUkc7cu2z4hXhi528r9SNmLhsRbaJ5yL8ZVWiWNAZSFuZebuJMy4O8c19wzKZ7TyXZ7nNibdpoBJjQ8c81fbVpluywtzixBjhGc5rHp7d/Uam7u/Dj6/pT2ajrbJgjW2e9jrj1UbcK8/bDd4aCRy2X2j5rYB5AieevuN5VZz93z9ya8WdycYz7/ryQjANGbneeyB4C0qu6lQZbZHjImf8AHkSscbVcTY23QCBxLTeeSpCtGltzTbxY/Wd0qajN6uU47fDt9ljaZIDaTQdQWgOjg5oIJ4So6jnRLgGA5bRDXARkCCRPPzUJq7QLRIGoa8teJMkkCPgTG/LHYAMiHHLaaRTfbe5sA24z7lqa9jGWeWXN2wdR2i0gtfbswe2GxfZe255qJ1BzonOwEuaS0bmvaQ6TqSTnzmao0bpn/DsOMby2ARzmfSviGC5jMRLx2iBJ2faU4MWzIi3kSIwSD3hIgC4eQBkGbJDp0JOu9SNriNmla2ZMPA3hrtPAkxrZVawBA2hbTaG21xFwG1GdqBYZR7o+PpgDtGGm52nNcCMxsukQ3Pdn5RuX3rIrAGQdp0Q2f4dTi8ydknw3wbBYVq7bCQ+J2QC0bJg7RI2g2TEndHBRhsiDYTcSSYnIEO/YbtDKyns5N3Zzlp4W/wB1dFzKTMiBlF4DZ3ElpuI045q5SJmDAA+reagbUOX7X48fJZMJtcfL4K6Zt29P6h15w5Yf5dRw8HQ/1c7yXSLjP6Oif4+6Kfn212ay9WH+YIiI0jruhrjuB9F5ZisTcm15N5+HNerPbII32XmXSfQDw5/syHEEyxxLXcA1wIB0zjmUcurxFZmIIysN2TSPzZqalXnuReYbceUxPgQFpqrn0yA9rqZ3OZskxe07RIncjawPPLj9n83otPO6EVhaBszNsjfQNIg2i871gXQcoJtoDkMg7suPFaqnjNLHXfFhMtMx5j3qRuLtlLbSAS8aANLc/XM3CuxfdWGU5xYWJtoHWdpfLzVSpWi034ksd4HKIWIrNIsbCAQYcy2hOQA3C/C6xdInsGDuMtidGm4HJEQVX5E5nKeyTwFRttkcVg1zhqW5xtNEcw5giJ1cD8sqhDZPZaNdlxceRYLKFuIAJ2GgE977UbgaYIM8FEWNok925uC0GDyqMO6O8FlVqkGXQ08XBr91nA9rSzgPiqL8Q4kyYnMbIjxGzM8zCjYd0i+Q7LRvjO/FFl0vPx7tXEQB3uyQPxCWE/O6+HpF2scnWc38wlpPCyojSItfLLiSctVkGx4XEwAL3cRA4cViz3Ok62Xt7/H88+a2cWDYgtO53zFisHP+v3CiDI8L6xukz6Smz9XHmfgFN2L6WGXh5z8zzKjQc+d/WQsI4+d/Gc1mW/R+bfSFiXDl9bxqtyys3C63O88P7t82Dmz9epvrw1UgEi7iBmbAj3GwtrJsFHUxNNubgOZFvHeqw6WpEw14cdwMn3LfouaR7IJLSZIgk3Huy3+KrstzOZv+rP1mFcpe0f3cPWfxFB/rCkd0LjHd3CVfHYb/APTgs60vdTD9ZHj6fXJZFx1/f1ncr1PqvjjnRDfxVqXwcfRT0+puLOb8O3h7Z3LIM+KNNaw8Y8d18td6zY4ZDzyW5b1IrnvYiiOTXO+AV/B9RGgg1MQ5/BlLZ97iUTTo/wCj2hFF7/vPgcmjPzcV1S5zAUaWHaGUwRG8ySd5K6CjOyJzi6mnp6eW5pmiIo6C0PTuDh3tQOybO3g6Gdxy/wB1vl8c0EEESDYjQomU3NOVpuBBY6HA6OEjkQbLW4vqxhnyQ11En/lnsnnTMjXIQt10l0eaZkSWHI6t4HeN3zzoFxGR8QbLTy2WXVc5ieqOIb/dVadZo0J2HaWDTLZtvWlxeExFH+9oVWRk7Yc5ojdUZtNFpsI8F339YOvnF/FSU8SdHEciiPMqPSbZiWlw1a4B4y018Rp4m0cS3fPiQ6SLklstcTbQL0So8O77WP8Axsa71HpKrvwOGOeFw7v/AEM+SJpwBrDMeDiAHAxEktIBP1ldRPrTmflpoABu0+S9Ad0VhD/wtDwYR6FRu6Fwf/S0fFpPqShp56+u1tyQBx+vqVF/atLRwP5p+vDevQv7Iw7e5QoM/DRpg+cfFQVcGz7o8h8k0acIzpYHuU6j98UzfnOZ3aBTU6uId3cO/fLnBt/rVdY/D7vr65qJ9KNT4lDTnmYTGGLUmW1cXHna/wBZrNvRNcjt4hv5WW8CTHh7lt3OA+pHpCNLibNJ4wfnPvTRqNYzoObOxFUxuAbHgBI8bK1S6q0Hd81Hjc6odnyFltsNhX6tjw+gtjSoAZmEWdmrwfV7DM7tBgO/YBPnC3OHw0WaI5CPRS0jTGoPj81L/W2DLZ8XD0QZ06BOqnbgxz81r8T0k+B7Mszvy53VGviK7wQagEjRp4b3c/AqWt44y82RvzQpjMgcyJ+vBZNdRHHlPqVxo6Mnv1XP39q3kZjJX6VEhoaJgCBnlzKktvM031McMf8AOW/lr++jfv6Qpt7rRbUn4KpW6Uc6wVGnhHOyE++PrmrFHBGQ3MmwAWnJsOgsMXv2nXDbmd+gXUKt0fhBSYGjmTvO9WVl6cMdQRERoREQfHAEQbg5hafGdDRJpH8hNvA6LZ1qxb9kniMlTqdIHQAe9EuMvLn3tEw4bJGhXx1FbHFO2+9da57dnukrW3G9KzhgWEa+d/rxXzaduB8fmvoxO+PRZisDp8fRHOyxhtncfMfNfZO73j5/NZh7foH5LLbZ9AqogPh75UZoE7/KFbNcDJvnAVat0iG6gfW8oMDgDmTH1xUbsE3eXcvmqlbplk99nMvE+qwbjg/+YDyPyUXVW/6swaAe8qVmyMpPuVWnVZ94KwzEU/vt/UENX3J230Cla074UTcQz77f1BTMeDqPMIaZjDg5u81kOjmnUe5fAxYlhQWGdGN4eQUzeiJyj3LXweKbTuPvQbP+yDqfesXYOkzvOHKZPktY9ztSfNV31Rvng2/vyRZN8Rsa+MHdpiBvOf7LZ9XcONk1dTZp4bxzM+XFaChQL+9Zv3Rr+I6jgFtqbzkPABS11ww13rokVTAMeAdrI5DVW1HUREQEREBR1KLXZtB8FIiCnU6NpnQjkT8VWqdBsP2ne75Laog0VTq00/bP6Qq7uqYP80j8v7rpUQcweqP/AJFQcpHxX0dTmfar1zyqELpkRNRz9Pqhhoh3tag3PrPI8pVqh1ZwbO7h6XiwH1W2RFQUsFSb3abG8mAegUwC+ogLE0wcwPJZIghdhKZzpsPNo+Sgf0TQOdGn+gD0V1EGrf1ewpzpN8CR8VXf1VwxyD2/hqELeIg553VKjpUqj84PwUTuqDdKz/ESumRBy46of94/o/1Kal1Yj+b/AJP9S6JEGqo9CNbm5x8gthRw7Wd0R6+alRAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREH//2Q==',
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
  //HOKA
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
  //NewBalance
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
  //Nike
    ShoeTile(
      title: 'Nike ZoomX Dragonflys',
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
  //ON
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
  //Puma
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
  //Saucony
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
  //UnderArmour
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
    ShoeTile(
      title: 'Under Armour Velociti Elite 2',
      imageUrl: 'https://img.runningwarehouse.com/watermark/rs.php?path=UA2VEU0-1.jpg&nw=731',
      price1:'Under Armour \$250',
      price2:'CharmCityRun \$250',
      price3:'Running Warehouse \$249.95',
      description: 'The Under Armour Velociti Elite 2 is a racing shoe designed for performance, featuring upgraded cushioning with a lower heel-toe offset for improved efficiency and turnover. It includes a full-length Thermoset Carbon plate for an explosive ride, ideal for achieving personal records. The shoe also offers durable traction with a Supercritical Flow foam outsole and a lightweight, anatomical fit with the Warp Upper. Perfect for podium finishes and marathon racing, the Velociti Elite 2 pushes the limits of racing performance.',
      website1:'https://www.underarmour.com/en-us/p/running/unisex_ua_velociti_elite_2_running_shoes/3027205.html?dwvar_3027205_color=002&dwvar_3027205_size=10.5%2F12&country=US&currency=USD&&cid=PLA_QT_US_82_beaOHs73sQ9&gad_source=4&gclid=Cj0KCQjw5cOwBhCiARIsAJ5njuYhrsQAN3vrC-HwKKpwZXUG2GybFFn6z7BRcL6L18StE-WpjzAgcogaAoEIEALw_wcB&gclsrc=aw.ds',
      website2:'https://shop.charmcityrun.com/product/2763440/under-armour/u-velociti-elite-2',
      website3:'https://www.runningwarehouse.com/Under_Armour_Velociti_Elite_2/descpage-UA2VEU0.html',
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
        'Full List',
        style: TextStyle(color: Colors.white),
      ),
      centerTitle: true,
      automaticallyImplyLeading: true,
      iconTheme: IconThemeData(color: Colors.white), // Change back button color
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
        borderRadius: BorderRadius.circular(8.0),
        side: BorderSide(
          color: const Color.fromARGB(255, 0, 0, 0), // Set border color to white
          width: 2.0,
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