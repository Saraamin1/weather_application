import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class SevevDays extends StatelessWidget {
 SevevDays({this.image,this.text});

 String? text;
 String? image;

  @override
  Widget build(BuildContext context) {
    return  Container(
                    width: 70,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue.shade300,
                    ),
                    child: Column(
                      children: [
                        Text(text!,style: TextStyle(color: Colors.white,),),
                       SizedBox(height: 7,),
                        Image.asset(
                         image!,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  );
  }
}
class Seven extends StatelessWidget {
  const Seven({super.key});

  @override
  Widget build(BuildContext context) {
    return   Column(
      

    
      children:[ 
         Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(11),
                  child: Text(
                    "Today",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.blue),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(11),
                  child: Text(
                    "Next 7 Days",
                    style: TextStyle(fontSize: 15, color: Colors.blue),
                  ),
                ),
              ],
            ),
        
        
        SizedBox(
                height: 95,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                   SevevDays(image:   "assets/images/showers.png",
                   text: "21",),
                    SizedBox(
                      width: 10,
                    ),
                  SevevDays(image: "assets/images/showers.png",
                  text: "21",),
                    SizedBox(
                      width: 10,
                    ),
                   SevevDays(image:  "assets/images/heavyrain.png",
                   text: "15",),
                    SizedBox(
                      width: 10,
                    ),
                   SevevDays(image:  "assets/images/lightrain.png",
                   text: "18",),
                    SizedBox(
                      width: 10,
                    ),
                  SevevDays(image:  "assets/images/snow.png",
                  text: "10",),
                    SizedBox(
                      width: 10,
                    ),
                   SevevDays(image: "assets/images/thunderstorm.png",
                   text: "20",),
                    SizedBox(
                      width: 10,
                    ),
                    SevevDays(image:  "assets/images/clear.png",
                    text: "20",),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),],
    );
}
}