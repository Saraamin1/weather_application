import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:weather_application/screens/search.dart';

import '../const.dart';

class Home extends StatelessWidget {
  Home({super.key});
  static String id = "home";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: KBackgroundColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 300,
                  width: 300,
                  child: Image.asset("assets/images/get-started.png")),
              // SizedBox(height: 200,),

              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, Search.id);
                },
                child: Text(
                  "Get Started",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
