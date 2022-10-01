import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:weather_application/models/current_weather.dart';
import 'package:weather_application/screens/city_weather.dart';
import 'package:weather_application/widgets/search.dart';

import '../const.dart';

class Search extends StatelessWidget {
  Search({super.key});
  static String id = "search";
  @override
  Widget build(BuildContext context) {
    return Provider.of<CurrentWeatherProvider>(context) != null ?
    SafeArea(
      child: Scaffold(
        backgroundColor: KBackgroundColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 220),
              child: Text(
                "Enter a city ",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child:
              SearchWidget(
              borderRadius: BorderRadius.circular(10),),
            ),
          ],
        ),
      ),
    ):CityWeather();
  }
}
