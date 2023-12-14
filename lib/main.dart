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
      appBar: AppBar(backgroundColor: Color.fromARGB(255, 241, 140, 45),
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
        color: Color.fromARGB(255, 8, 72, 125),
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.wb_cloudy_outlined,
          color: Colors.white,
          size: 90,
          ),
          Text(
            "Hamburg",
            style: TextStyle(
          color: Color.fromARGB(255, 241, 140, 45),
          fontSize: 42,
          fontWeight: FontWeight.bold,
          ),
          ),
          Text(
            "4°C",
            style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          ),
          ),
          Text(
            "Bewölkt",
            style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.w200,
          ),
          ),
        ],
        ),
        ),
      ),
    );
   }
 }
