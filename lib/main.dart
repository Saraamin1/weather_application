import 'package:flutter/material.dart';
import 'package:weather_application/models/current_weather.dart';
import 'package:weather_application/screens/city_weather.dart';
import 'package:weather_application/screens/home.dart';
import 'package:weather_application/screens/search.dart';
import 'package:provider/provider.dart';

void main() {
   
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider   (
          create: (context){ return CurrentWeatherProvider() ;},


      child: MaterialApp(
          
        routes: {
          Home.id: (context) => Home(),
          Search.id: (context) => Search(),
          CityWeather.id: (context) => CityWeather(),
        },
        initialRoute:   Home.id,
          
      ),
    );
  }
}
