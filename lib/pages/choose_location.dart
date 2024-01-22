import 'package:flutter/material.dart';
import 'package:world_time_projec/services/world_time.dart';

class Choose_location extends StatefulWidget {
  const Choose_location({super.key});


  @override
  State<Choose_location> createState() => _Choose_locationState();
}


class _Choose_locationState extends State<Choose_location> {
  List<World_time> locations = [
    World_time(url: 'Africa/Abidjan', location: 'Côte d\'Ivoire', flag: 'ci.png'),
    World_time(url: 'Africa/Luanda', location: 'Angola', flag: 'ao.png'),
    World_time(url: 'Africa/Gaborone', location: 'Botswana', flag: 'bw.png'),
    World_time(url: 'Africa/Yaounde', location: 'Cameroon', flag: 'cm.png'),
    World_time(url: 'Africa/Cairo', location: 'Egypt', flag: 'eg.png'),
    World_time(url: 'Africa/Addis_Ababa', location: 'Ethiopia', flag: 'et.png'),
    World_time(url: 'Africa/Accra', location: 'Ghana', flag: 'gh.png'),
    World_time(url: 'Africa/Nairobi', location: 'Kenya', flag: 'ke.png'),
    World_time(url: 'Africa/Rabat', location: 'Morocco', flag: 'ma.png'),
    World_time(url: 'Africa/Windhoek', location: 'Namibia', flag: 'na.png'),
    World_time(url: 'Africa/Lagos', location: 'Nigeria', flag: 'ng.png'),
    World_time(url: 'Africa/Kigali', location: 'Rwanda', flag: 'rw.png'),
    World_time(url: 'Africa/Dakar', location: 'Senegal', flag: 'sn.png'),
    World_time(
        url: 'Africa/Pretoria', location: 'South Africa', flag: 'za.png'),
    World_time(url: 'Africa/Khartoum', location: 'Sudan', flag: 'sd.png'),
    World_time(
        url: 'Africa/Dar_es_Salaam', location: 'Tanzania', flag: 'tz.png'),
    World_time(url: 'Africa/Tunis', location: 'Tunisia', flag: 'tn.png'),
    World_time(url: 'Africa/Kampala', location: 'Uganda', flag: 'ug.png'),

    // Asia (24)
    World_time(url: 'Asia/Kabul', location: 'Afghanistan', flag: 'af.png'),
    World_time(url: 'Asia/Shanghai', location: 'China', flag: 'cn.png'),
    World_time(url: 'Asia/Kolkata', location: 'India', flag: 'in.png'),
    World_time(url: 'Asia/Jakarta', location: 'Indonesia', flag: 'id.png'),
    World_time(url: 'Asia/Tehran', location: 'Iran', flag: 'ir.png'),
    World_time(url: 'Asia/Baghdad', location: 'Iraq', flag: 'iq.png'),
    World_time(url: 'Asia/Tokyo', location: 'Japan', flag: 'jp.png'),
    World_time(url: 'Asia/Almaty', location: 'Kazakhstan', flag: 'kz.png'),
    World_time(url: 'Asia/Seoul', location: 'Korea, South', flag: 'kr.png'),
    World_time(url: 'Asia/Kuala_Lumpur', location: 'Malaysia', flag: 'my.png'),
    World_time(url: 'Asia/Ulaanbaatar', location: 'Mongolia', flag: 'mn.png'),
    World_time(url: 'Asia/Kathmandu', location: 'Nepal', flag: 'np.png'),
    World_time(url: 'Asia/Islamabad', location: 'Pakistan', flag: 'pk.png'),
    World_time(url: 'Asia/Manila', location: 'Philippines', flag: 'ph.png'),
    World_time(url: 'Asia/Moscow', location: 'Russia', flag: 'ru.png'),

    // Africa
    World_time(
        url: 'Africa/Algiers', location: 'Algiers, Algeria', flag: 'dz.png'),
    World_time(
        url: 'IndianOcean/Antananarivo',
        location: 'Antananarivo, Madagascar',
        flag: 'mg.png'),
    World_time(url: 'Africa/Dakar', location: 'Dakar, Senegal', flag: 'sn.png'),
    World_time(
        url: 'IndianOcean/Mahe',
        location: 'Victoria, Seychelles',
        flag: 'sc.png'),
    World_time(
        url: 'Africa/Lusaka', location: 'Lusaka, Zambia', flag: 'zm.png'),

    // Americas
    World_time(
        url: 'America/Buenos_Aires',
        location: 'Buenos Aires, Argentina',
        flag: 'ar.png'),
    World_time(
        url: 'America/Belize', location: 'Belmopan, Belize', flag: 'bz.png'),
    World_time(
        url: 'America/Santiago', location: 'Santiago, Chile', flag: 'cl.png'),
    World_time(
        url: 'America/Santo_Domingo',
        location: 'Santo Domingo, Dominican Republic',
        flag: 'do.png'),
    World_time(url: 'America/Lima', location: 'Lima, Peru', flag: 'pe.png'),

    // Asia
    World_time(
        url: 'Asia/Thimphu', location: 'Thimphu, Bhutan', flag: 'bt.png'),
    World_time(
        url: 'Asia/Phnom_Penh',
        location: 'Phnom Penh, Cambodia',
        flag: 'kh.png'),
    World_time(
        url: 'Asia/Tbilisi', location: 'Tbilisi, Georgia', flag: 'ge.png'),
    World_time(
        url: 'Asia/Ulaanbaatar',
        location: 'Ulaanbaatar, Mongolia',
        flag: 'mn.png'),
    World_time(
        url: 'Asia/Ho_Chi_Minh',
        location: 'Ho Chi Minh City, Vietnam',
        flag: 'vn.png'),

    // Europe
    World_time(
        url: 'Europe/Zagreb', location: 'Zagreb, Croatia', flag: 'hr.png'),
    World_time(
        url: 'Atlantic/Reykjavik',
        location: 'Reykjavik, Iceland',
        flag: 'is.png'),
    World_time(url: 'Europe/Riga', location: 'Riga, Latvia', flag: 'lv.png'),
    World_time(url: 'Europe/Oslo', location: 'Oslo, Norway', flag: 'no.png'),
    World_time(
        url: 'Europe/Lisbon', location: 'Lisbon, Portugal', flag: 'pt.png'),

    // Oceania
    World_time(url: 'Pacific/Suva', location: 'Suva, Fiji', flag: 'fj.png'),
    World_time(
        url: 'Pacific/Auckland',
        location: 'Auckland, New Zealand',
        flag: 'nz.png'),
    World_time(
        url: 'Pacific/Port_Moresby',
        location: 'Port Moresby, Papua New Guinea',
        flag: 'pg.png'),
    World_time(url: 'Pacific/Apia', location: 'Apia, Samoa', flag: 'ws.png'),
    World_time(
        url: 'Pacific/Port_Vila',
        location: 'Port Vila, Vanuatu',
        flag: 'vu.png'),
    // Africa
    World_time(
        url: 'Africa/Ouagadougou',
        location: 'Ouagadougou, Burkina Faso',
        flag: 'bf.png'),
    World_time(
        url: 'Africa/Addis_Ababa',
        location: 'Addis Ababa, Ethiopia',
        flag: 'et.png'),
    World_time(
        url: 'Africa/Nairobi', location: 'Nairobi, Kenya', flag: 'ke.png'),
    World_time(
        url: 'Africa/Windhoek', location: 'Windhoek, Namibia', flag: 'na.png'),
    World_time(url: 'Africa/Dakar', location: 'Dakar, Senegal', flag: 'sn.png'),

    // Americas
    World_time(
        url: 'America/La_Paz', location: 'La Paz, Bolivia', flag: 'bo.png'),
    World_time(
        url: 'America/Toronto', location: 'Toronto, Canada', flag: 'ca.png'),
    World_time(
        url: 'America/Bogota', location: 'Bogota, Colombia', flag: 'co.png'),
    World_time(
        url: 'America/Mexico_City',
        location: 'Mexico City, Mexico',
        flag: 'mx.png'),
    World_time(url: 'America/Lima', location: 'Lima, Peru', flag: 'pe.png'),

    // Asia
    World_time(
        url: 'Asia/Thimphu', location: 'Thimphu, Bhutan', flag: 'bt.png'),
    World_time(url: 'Asia/Tokyo', location: 'Tokyo, Japan', flag: 'jp.png'),
    World_time(url: 'Asia/Amman', location: 'Amman, Jordan', flag: 'jo.png'),
    World_time(url: 'Asia/Beirut', location: 'Beirut, Lebanon', flag: 'lb.png'),
    World_time(
        url: 'Asia/Ulaanbaatar',
        location: 'Ulaanbaatar, Mongolia',
        flag: 'mn.png'),

    // Europe
    World_time(
        url: 'Europe/Vienna', location: 'Vienna, Austria', flag: 'at.png'),
    World_time(
        url: 'Europe/Copenhagen',
        location: 'Copenhagen, Denmark',
        flag: 'dk.png'),
    World_time(
        url: 'Europe/Athens', location: 'Athens, Greece', flag: 'gr.png'),
    World_time(
        url: 'Europe/Dublin', location: 'Dublin, Ireland', flag: 'ie.png'),
    World_time(url: 'Europe/Madrid', location: 'Madrid, Spain', flag: 'es.png'),

    // Oceania
    World_time(
        url: 'Australia/Darwin', location: 'Darwin, Australia', flag: 'au.png'),
    World_time(
        url: 'Pacific/Noumea',
        location: 'Noumea, New Caledonia',
        flag: 'nc.png'),
    World_time(url: 'Pacific/Apia', location: 'Apia, Samoa', flag: 'ws.png'),
    World_time(
        url: 'Pacific/Honiara',
        location: 'Honiara, Solomon Islands',
        flag: 'sb.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blue[400],
        title: Text("choose location",style: TextStyle(
          color: Colors.white
        ),),
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index){
          return Card(
            child: ListTile(
              onTap: (){
                print(locations[index].location);
                locations[index].getTime();
                Navigator.pushNamed(context,"/loading", arguments: {
                  "instance": locations[index],
                });
              },
              title: Text(locations[index].location),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/flags/${locations[index].flag}'),
              ),
            ),
          );
        },
      )
      
      ,
    );
  }
}