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
          "Superkalifragilistikexpialigetische Wetter-App",
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
            fontSize: 14,
            ),
        ),
      ),
      body: Container(
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Hamburg",
            style: TextStyle(
          color: Colors.blue,
          fontSize: 42,
          fontWeight: FontWeight.bold,
          ),
          ),
          Text(
            "4°C",
            style: TextStyle(
          color: Colors.blue,
          fontSize: 24,
          ),
          ),
          Text(
            "Regnerisch",
            style: TextStyle(
          color: Colors.blue,
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
