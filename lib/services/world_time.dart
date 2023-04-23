import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {

  String location; // location name for UI
  String time; // the time in that location
  String flag; // url to an asset flag icon
  String url; // location url for api endpoint
  bool isDaytime; // true or false if daytime or not

  WorldTime({ this.location, this.flag, this.url });

  Future<void> getTime() async {

    try{
      // make the request
      Response response = await get('http://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(response.body);
      Response response1 = await get('http://worldtimeapi.org/api/timezone/$url');
      Map data1 = jsonDecode(response.body);

      // get properties from json
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1,3);
      String offsetsign = data['utc_offset'].substring(0,1);
      String offsetmin = data['utc_offset'].substring(data['utc_offset'].length - 2);

      // create DateTime object
      DateTime now = DateTime.parse(datetime);
      if(offsetsign == '+') {
        now = now.add(Duration(hours: int.parse(offset) , minutes: int.parse(offsetmin)));
      }else {
        now = now.subtract(Duration(hours: int.parse(offset) , minutes: int.parse(offsetmin)));
      }

      // set the time property
      isDaytime = now.hour > 6 && now.hour < 20 ? true : false;
      time = DateFormat.jm().format(now);
    }
    catch (e) {
      print(e);
      time = 'could not get time';
    }

  }

}