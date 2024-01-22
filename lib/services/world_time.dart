import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:intl/intl.dart';

class World_time {

  String location;
  String time = "";
  String flag;
  String url;
  bool isDayTime = true;

  World_time({required this.flag, required this.location , required this.url});
  
  Future<void> getTime() async {
    try {
      Uri uri = Uri.parse("http://worldtimeapi.org/api/timezone/$url");
      var res = await http.get(uri);
      Map data = jsonDecode(res.body);
      String dateTime = data["datetime"];
      String offset = data["utc_offset"].substring(1,3);
      DateTime now = DateTime.parse(dateTime);
      now = now.add(Duration(hours: int.parse(offset)));
      isDayTime = now.hour > 5 && now.hour < 16 ? true : false;
      time = DateFormat.jm().format(now);
      print("from services time is ${time}");
    } catch (e) {
      print("caught error : ${e}");
      time = "error geting time";
    }
  }
}
