import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:weather_application/const.dart';
import 'package:weather_application/models/current_weather.dart';
import 'package:weather_application/providers/Current_provider.dart';
import 'package:weather_application/widgets/search.dart';
import 'package:weather_application/widgets/sevenDays.dart';
import 'package:weather_application/widgets/three_column.dart';

class CityWeather extends StatelessWidget {
  CityWeather({super.key});
  static String id = "city weather";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 5, bottom: 5, left: 20, right: 20),
              child: SearchWidget(borderRadius: BorderRadius.circular(40),
           )
              ),
           
            Padding(
              padding: const EdgeInsets.only(right: 290),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: Colors.blue,
                  ),
                  Text(
                   Provider.of<CurrentWeatherProvider>(context).cityName!,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.blue),
                  ),
                ],
              )
            ),
            Padding(
              padding: const EdgeInsets.only(right: 290, bottom: 30),
              child: Consumer<CurrentWeatherProvider>(
                builder: ((context, value, child) => 
                 Text(
               " ${ value.last_updated?.hour.toString()}:${value.last_updated?.minute.toString()}",
              
                  style: TextStyle(color: Colors.blue.shade200),
                )),
              ),
            ),
            Container(
              height: 140,
              width: 320,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    offset: Offset(0, 7),
                    color: Colors.blue.shade800,
                  ),
                ],
              ),
              child: Stack(
                clipBehavior: Clip.none,
               children: [
                Positioned(
                  width: 120,
                  height: 120,
                  left: 20,
                  bottom: 60,
                  child: Image.asset("assets/images/showers.png"),
                ),
                Positioned(
                  left: 220,
                  top: 50,
                  child: Text(
Provider.of<CurrentWeatherProvider>(context,listen: false).temp_c.toString(),                   
                    style: TextStyle(fontSize: 50, color: Colors.white70),
                  ),
                ),
                Positioned(
                  left: 40,
                  top: 100,
                  child: Text(
Provider.of<CurrentWeatherProvider>(context,listen: false).text.toString(),                   
                    style: TextStyle(fontSize: 20, color: Colors.white70),
                  ),
                ),
              ]),
            ),
          ThreeColumn(),
           
          Seven(),
          ],
        ),
      ),
    );
  }
}
