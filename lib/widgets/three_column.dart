import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:weather_application/models/current_weather.dart';

import '../providers/Current_provider.dart';

class ThreeColumn extends StatelessWidget {
  const ThreeColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
  Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Wind Speed",
                    style: TextStyle(color: Colors.black45),
                  ),
                  Text(
                    "Humidity",
                    style: TextStyle(color: Colors.black45),
                  ),
                  Text(
                    "Max Temp",
                    style: TextStyle(color: Colors.black45),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue.shade300,
                    ),
                    child: Image.asset(
                      "assets/images/windspeed.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue.shade300,
                    ),
                    child: Image.asset(
                      "assets/images/humidity.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue.shade300,
                    ),
                    child: Image.asset(
                      "assets/images/max-temp.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                   Provider.of<CurrentWeatherProvider>(context,listen: false).wind_kph.toString(),                   

                    style: TextStyle(color: Colors.blue.shade400),
                  ),
                  Text(
                 Provider.of<CurrentWeatherProvider>(context,listen: false).humidity.toString(),                   

                    style: TextStyle(color: Colors.blue.shade400),
                  ),
                  Text(
                  Provider.of<CurrentWeatherProvider>(context,listen: false).maxtemp_c.toString(),                   
                    style: TextStyle(color: Colors.blue.shade400),
                  ),
                ],
              ),
            ),


    
      ]
      );
  }
}