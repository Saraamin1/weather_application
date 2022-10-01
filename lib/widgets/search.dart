import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_application/models/weather_service.dart';
import 'package:weather_application/screens/city_weather.dart';

import '../models/current_weather.dart';
import '../providers/Current_provider.dart';

class SearchWidget extends StatelessWidget {
  SearchWidget({this.borderRadius, this.cityName});
  var borderRadius;
  String? cityName;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (data) {
        cityName = data;
      },
      onSubmitted: (data) async {
        Navigator.pushNamed(
          context,
          CityWeather.id,
        );
        // Navigator.pop(context);

        cityName = data;
        WeatherService service = WeatherService();
        dynamic ccurent =
            await service.getWeather(cityName: cityName);
        Provider.of<CurrentWeatherProvider>(context, listen: false).cityName =
            ccurent;
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: borderRadius,
        ),
        hintText: "Search",
        suffixIcon: Icon(Icons.search),
      ),
    );
  }
}
