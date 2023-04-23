import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/model/weather_model.dart';

class WeatherApiClient {
  Future<Weather>? getCurrentWeather(String? location) async {
    var endpoint = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=72bc11941d36459f8dc4646bf4753675&units=metric");

    var response = await http.get(endpoint);
    var body = jsonDecode(response.body);
    print(Weather.fromJson(body).cityName);
    return Weather.fromJson(body);
  }
}
