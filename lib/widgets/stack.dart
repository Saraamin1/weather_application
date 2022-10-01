// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:weather_application/const.dart';
// import 'package:weather_application/widgets/search.dart';
// import 'package:weather_application/widgets/sevenDays.dart';
// import 'package:weather_application/widgets/three_column.dart';

// class Stack extends StatelessWidget {
//   const Stack({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  Container(
//               height: 140,
//               width: 320,
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//                 borderRadius: BorderRadius.circular(10),
//                 boxShadow: [
//                   BoxShadow(
//                     blurRadius: 5,
//                     offset: Offset(0, 7),
//                     color: Colors.blue.shade800,
//                   ),
//                 ],
//               ),
//               child: Stack(
//                 clipBehavior: Clip.none,
//                children: [
//                 Positioned(
//                   width: 120,
//                   height: 120,
//                   left: 20,
//                   bottom: 60,
//                   child: Image.asset("assets/images/showers.png"),
//                 ),
//                 Positioned(
//                   left: 220,
//                   top: 50,
//                   child: Text(
//                     "21",
//                     style: TextStyle(fontSize: 50, color: Colors.white70),
//                   ),
//                 ),
//                 Positioned(
//                   left: 40,
//                   top: 100,
//                   child: Text(
//                     "Showers",
//                     style: TextStyle(fontSize: 20, color: Colors.white70),
//                   ),
//                 ),
//               ]),
//             );
// }
// }