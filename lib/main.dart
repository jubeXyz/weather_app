import 'package:flutter/material.dart'; 


 void main() {
   runApp(const MyApp());
 }


 class MyApp extends StatelessWidget {
   const MyApp({super.key}); 


   @override
   Widget build(BuildContext context) {
     return const MaterialApp(
       home: WeatherApp(),
     );
   }
 }


 class WeatherApp extends StatelessWidget {
   const WeatherApp({super.key});


   @override
   Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(backgroundColor: Color.fromARGB(255, 241, 158, 62),
        title: const Text(
          "Superkalifragilistikexpialigetische \n Wetter-App",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color.fromARGB(255,8,72,125),
            fontWeight: FontWeight.bold,
            fontSize: 14,
            ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image:DecorationImage(
            image: AssetImage('/Users/julibebensee/Code/weather_app/lib/assets/aiclouds_soft_colors.jpg'),
            fit:BoxFit.cover,
          ),
        ),
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.wb_cloudy,
          color: Color.fromARGB(255, 27, 103, 158),
          size: 90,
          ),
          Text(
            "Hamburg",
            style: TextStyle(
          color: Color.fromARGB(255, 15, 107, 137),
          fontSize: 48,
          fontWeight: FontWeight.bold,
          ),
          ),
          Text(
            "4°C",
            style: TextStyle(
          color: Color.fromARGB(255, 28, 98, 173),
          fontSize: 30,
          fontWeight: FontWeight.bold,
          ),
          ),
          Text(
            "Bewölkt",
            style: TextStyle(
          color: Color.fromARGB(255, 142, 65, 15),
          fontSize: 24,
          fontWeight: FontWeight.w400,
          ),
          ),
        ],
        ),
        ),
      ),
    );
   }
 }
