import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
class CurrentWeatherProvider extends ChangeNotifier {
String? cityName;
  notifyListeners();
    
final DateTime? last_updated;
final String? image;
final String ?text;
final double? mintemp_c;
final double ?wind_kph;
final double ?humidity;
final double ?maxtemp_c;
final double ?temp_c;

  CurrentWeatherProvider({
    this.last_updated,
    this.image,
       this.text,
         this.mintemp_c,
       this.wind_kph,
         this.humidity,
        this.maxtemp_c,
                this.temp_c

  });

 factory CurrentWeatherProvider.fromJson (dynamic resbonseBody){
 var current0= resbonseBody["current"];
var current = resbonseBody["forecast"]["forecastday"][0];
 return CurrentWeatherProvider (
  last_updated:DateTime.parse(resbonseBody["current"]["last_updated"]),
  image:"",
   text:current["day"]["condition"]["text"],
   mintemp_c:current["day"]["mintemp_c"],
    wind_kph:current0["condition"]["wind_kph"],
    humidity:current0["condition"]["humidity"],
     maxtemp_c:current["day"]["maxtemp_c"],
     temp_c: current0["temp_c"],
     );
  
 }

}