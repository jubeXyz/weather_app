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
      appBar: AppBar(
        title: const Text(
          "Wetter-App"),
      ),
      body: Container(
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Stadt",
            style: TextStyle(
          color: Colors.blue,
          fontSize: 24,
          ),
          ),
          Text(
            "Temperatur",
            style: TextStyle(
          color: Colors.blue,
          fontSize: 24,
          ),
          ),
          Text(
            "Wetter",
            style: TextStyle(
          color: Colors.blue,
          fontSize: 24,
          ),
          ),
        ],
        ),
        ),
      ),
    );
   }
 }
