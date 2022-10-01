import 'dart:convert';

import 'package:http/http.dart' as http;

class WeatherService {
  String baseUrl = "https://api.weatherapi.com/v1";
   String apiKey = "fe37477c02dd4456aa7182209221707";
  
 
 Future <dynamic> getWeather ({ String ? cityName}) async{

var url = "$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=7&aqi=no&alerts=no";
var resbonse = await http.get(Uri.parse(url));
var resbonseBody = jsonDecode(resbonse.body);
print(resbonseBody);

 }

}